# Codex Design Skill

> Default Chinese homepage | [README_ZH.md](./README_ZH.md) | [README_EN.md](./README_EN.md)

A **skill-first open-source repository** for turning Codex into a design delivery partner instead of a generic HTML page generator.

![License](https://img.shields.io/badge/license-MIT-green.svg)
![Type](https://img.shields.io/badge/type-skill--first-blue.svg)
![Focus](https://img.shields.io/badge/focus-design%20delivery-purple.svg)
![Workflow](https://img.shields.io/badge/workflow-context--first-orange.svg)
![CI](https://img.shields.io/github/actions/workflow/status/mason0510/codex-design-skill/ci.yml?branch=main&label=ci)

## What this repository is

`codex-design-skill` is not a dump of a proprietary closed prompt.
It is an extracted, reusable workflow for Codex-style environments that need better design delivery.

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

## Problems it tries to solve

Many coding assistants still behave like this on design tasks:

- they start drawing immediately
- they ignore existing product context
- they force every deliverable into a normal web page shape
- they provide only one answer with no tweak surface
- they stop at code generation instead of delivery validation

`codex-design-skill` is designed to push against those patterns.

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
├── README_ZH.md
├── README_EN.md
├── ARCHITECTURE.md
├── USAGE_AND_MAINTENANCE.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── TODOS.md
├── CODE_OF_CONDUCT.md
├── SECURITY.md
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
└── .github/
    ├── workflows/ci.yml
    ├── ISSUE_TEMPLATE/
    └── PULL_REQUEST_TEMPLATE.md
```

## Quick start

### 1. Clone the repository

```bash
git clone https://github.com/mason0510/codex-design-skill.git
cd codex-design-skill
```

### 2. Install it into your local skills directory

#### Codex

```bash
mkdir -p ~/.codex/skills
cp -R . ~/.codex/skills/codex-design-skill
```

#### Other compatible environments

Copy this repository into the appropriate skills directory.
The main entry stays the same:

```text
SKILL.md
```

### 3. Run the minimum validation

```bash
bash ./scripts/validate.sh
```

### 4. Start from the smallest useful artifact

- for prototypes: `templates/prototype-starter.html`
- for HTML decks: `templates/deck-starter.html`
- for trigger examples: `examples/usage.md`

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
- the presence of basic community governance files

## Documentation

- [Architecture](./ARCHITECTURE.md)
- [Usage and Maintenance](./USAGE_AND_MAINTENANCE.md)
- [Examples](./examples/usage.md)
- [Contributing](./CONTRIBUTING.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [Security Policy](./SECURITY.md)
- [Changelog](./CHANGELOG.md)
- [TODOs](./TODOS.md)

## How collaboration works

If you want to contribute:

1. read [CONTRIBUTING.md](./CONTRIBUTING.md)
2. use the issue templates for bugs and feature requests
3. decide whether a change belongs in `SKILL.md`, `references/`, `templates/`, or `scripts/`
4. run `bash ./scripts/validate.sh` before opening a PR

If you discover a security issue, do not open a public issue first. Follow the process in [SECURITY.md](./SECURITY.md).

## Non-goals

This repository does **not** try to:

- recreate a closed-source design environment
- copy proprietary wording or internal prompts
- become a script-heavy toolbox
- replace design thinking with template spam

## Open-source boundary

This project is an **extracted design skill**, not a verbatim copy of a third-party closed prompt.

Boundary rules:
- keep the reusable methodology
- do not copy proprietary phrasing
- do not bundle private brand environments
- do not expose internal closed-product implementation details

## 📈 Star history

[![Star History Chart](https://api.star-history.com/svg?repos=mason0510/codex-design-skill&type=Date)](https://star-history.com/#mason0510/codex-design-skill&Date)

## ❓ Beginner FAQ

### 1. Is this a CLI tool?
No. It is primarily a **skill repository**. The main value is the workflow, design judgment, references, and starter files.

### 2. Can I use it if I am not a designer?
Yes. It helps turn vague design requests into a better delivery workflow instead of random page generation.

### 3. Should I use it for tiny CSS fixes?
No. For small frontend fixes, a normal coding workflow is enough.

### 4. Is this a one-to-one replacement for a closed design prompt?
No. It is an extracted open-source workflow, not a mirror of any closed environment.

### 5. Why split the repo into `references/` and `templates/`?
To keep `SKILL.md` compact while still keeping the repository practical and maintainable.

### 6. Who is this repository best for?
People using Codex, Claude Code, or similar agents for prototypes, HTML decks, and UI exploration who want better delivery discipline.

### 7. Will it replace a full design system?
No. It improves workflow quality, but it does not replace a real design system, a mature brand package, or production-grade assets.

## License

MIT. See [LICENSE](./LICENSE).
