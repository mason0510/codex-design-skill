# Codex 接入说明

## 作用

这不是一个运行时协议文件，而是一份给维护者看的接入说明。

目标：
- 明确 `SKILL.md` 是主入口
- 明确 `references/` 是按需补充层
- 明确 `templates/` 只是起步文件，不是主仓库核心

## 推荐加载顺序

```text
1. 先读 SKILL.md
2. 需要更细规则时，再读 references/*
3. 需要起步文件时，再看 templates/*
4. 收尾前跑 scripts/validate.sh
```

## 适用口径

这份仓库适合：
- Codex 风格环境
- 其他支持 skill / rule 文件的兼容环境

不假设任何专有平台能力，也不绑定闭源工具链。
