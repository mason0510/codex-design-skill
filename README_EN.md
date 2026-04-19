# Codex Design Skill

A **skill-first open-source repository** for turning Codex into a design delivery partner instead of a generic HTML page generator.

![License](https://img.shields.io/badge/license-MIT-green.svg)
![Type](https://img.shields.io/badge/type-skill--first-blue.svg)
![Focus](https://img.shields.io/badge/focus-design%20delivery-purple.svg)

## What this repository is

`codex-design-skill` is not a dump of a proprietary closed prompt.
It is a neutral, reusable design workflow for Codex-style environments.

It focuses on three things:

- helping Codex handle **high-fidelity HTML prototypes, decks, motion demos, and UI exploration**
- enforcing a **context-first design workflow**
- shipping a **real artifact first**, then validating it before handoff

## Core mindset

```text
Need before style
Context before visuals
Artifact before explanation
Validation before handoff
```

This repository is built to reduce the common failure modes of AI design work:

- building too early without clarifying the task
- guessing a visual language without design context
- turning every request into the same web page pattern
- delivering only one direction with no comparison space
- handing off broken HTML without validation

## Use cases

| Scenario | Fit | Notes |
|---|---|---|
| High-fidelity HTML prototypes | ✅ | product flows, UI concepts, interaction mockups |
| HTML slide decks | ✅ | presentations, pitch decks, report pages |
| Motion / demo pages | ✅ | design demos, motion boards |
| Design-system-aligned UI reconstruction | ✅ | read context first, then extend |
| Generic CRUD development | ❌ | not the main purpose |
| Verbatim copying of proprietary prompts | ❌ | explicitly out of scope |

## Repository structure

```text
codex-design-skill/
├── SKILL.md
├── README.md
├── README_EN.md
├── ARCHITECTURE.md
├── USAGE_AND_MAINTENANCE.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── TODOS.md
├── agents/
│   └── codex.md
├── references/
│   ├── design-context-intake.md
│   ├── deliverable-modes.md
│   ├── variants-and-tweaks.md
│   ├── verification-and-handoff.md
│   └── open-source-boundary.md
├── templates/
│   ├── prototype-starter.html
│   └── deck-starter.html
├── examples/
│   └── usage.md
├── scripts/
│   └── validate.sh
└── .github/workflows/ci.yml
```

## Quick start

```bash
git clone https://github.com/mason0510/codex-design-skill.git
cd codex-design-skill
bash ./scripts/validate.sh
```

Main entry:

```text
SKILL.md
```

## What is included

### 1. A compact main skill
`SKILL.md` keeps the core workflow short and points to deeper references only when needed.

### 2. On-demand reference files
The `references/` directory keeps advanced guidance out of the main entry so the repository stays practical and professional.

### 3. Starter templates
- `templates/prototype-starter.html`
- `templates/deck-starter.html`

These are not meant to replace real design judgment. They are only fast starting points.

### 4. A minimal but useful validation script
`validate.sh` checks:
- required files
- `SKILL.md` frontmatter shape
- obvious sensitive strings or proprietary leftovers

## Non-goals

This repository does **not** try to:

- recreate a closed-source design environment
- copy proprietary wording or internal prompts
- become a script-heavy toolbox
- replace design thinking with template spam

## Docs

- `SKILL.md`
- `ARCHITECTURE.md`
- `USAGE_AND_MAINTENANCE.md`
- `examples/usage.md`
- `references/*`

## License

MIT
