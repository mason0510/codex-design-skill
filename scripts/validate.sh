#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

required_files=(
  SKILL.md
  README.md
  README_ZH.md
  README_EN.md
  ARCHITECTURE.md
  USAGE_AND_MAINTENANCE.md
  CONTRIBUTING.md
  CHANGELOG.md
  TODOS.md
  .gitignore
  LICENSE
  agents/codex.md
  references/design-context-intake.md
  references/deliverable-modes.md
  references/variants-and-tweaks.md
  references/verification-and-handoff.md
  references/open-source-boundary.md
  templates/prototype-starter.html
  templates/deck-starter.html
  examples/usage.md
  .github/workflows/ci.yml
)

for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "缺少文件: $file"
    exit 1
  fi
done

python3 - <<'PY2'
from pathlib import Path
import re
text = Path('SKILL.md').read_text(encoding='utf-8')
match = re.match(r'^---\n(.*?)\n---\n', text, re.S)
if not match:
    raise SystemExit('SKILL.md 缺少 frontmatter')
frontmatter = [line for line in match.group(1).strip().splitlines() if line.strip()]
keys = []
for line in frontmatter:
    if ':' not in line:
        raise SystemExit('frontmatter 格式错误')
    keys.append(line.split(':', 1)[0].strip())
if keys != ['name', 'description']:
    raise SystemExit(f'frontmatter 键必须且仅能是 name, description；当前为: {keys}')
print('SKILL frontmatter 校验通过')
PY2

patterns=(
  '/Users/'
  '@126.com'
  '@gmail.com'
  '@protonmail.com'
  'Claude Artifacts'
  'Anthropic internal'
  'system prompt'
)

for pattern in "${patterns[@]}"; do
  if rg -n --hidden -S "$pattern" . -g "!scripts/validate.sh" >/tmp/codex_design_skill_validate_rg.txt 2>/dev/null; then
    if [ -s /tmp/codex_design_skill_validate_rg.txt ]; then
      echo "发现疑似不应公开的内容: $pattern"
      cat /tmp/codex_design_skill_validate_rg.txt
      exit 1
    fi
  fi
done

echo "validate.sh: OK"
