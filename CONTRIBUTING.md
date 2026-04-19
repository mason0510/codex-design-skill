# Contributing

感谢你改进 `codex-design-skill`。

## 贡献方向

欢迎提交：
- 更好的设计工作流规则
- 更清晰的交付与验证规范
- 新的示例与模板
- references 文档补强
- 结构校验脚本改进

不欢迎提交：
- 逐字搬运第三方专有系统提示词
- 与设计工作流无关的脚本堆砌
- 私有品牌规范、私有账号信息、私人路径
- 让仓库偏离 skill-first 方向的重工具化改造

## 提交流程

1. Fork 仓库
2. 创建分支：`git checkout -b feature/your-change`
3. 修改文档、模板或脚本
4. 运行：`bash ./scripts/validate.sh`
5. 提交：`git commit -m "feat: your change"`
6. 推送并发起 PR

## 提交规范

推荐使用 Conventional Commits：
- `feat:` 新功能或新规则
- `fix:` 修复错误
- `docs:` 文档修改
- `refactor:` 重构但无行为变化
- `chore:` 杂务维护

## 审查标准

PR 至少应满足：
- 没有敏感信息
- 没有逐字复制专有内容
- 内容可跨项目复用
- 文档结构清晰
- `validate.sh` 通过

## 关于 references 与 templates

如果新增内容，请先判断应该放哪：

- **主工作流与高层原则** → `SKILL.md`
- **细规则 / checklist** → `references/`
- **起步 HTML 文件** → `templates/`
- **自动校验逻辑** → `scripts/`

请不要把所有东西都塞进根目录。
