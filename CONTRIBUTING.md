# 贡献指南

感谢你愿意改进 `codex-design-skill`。

这个仓库欢迎的是：**能提升设计交付质量的规则、示例、模板和校验**。
不欢迎的是：把仓库带偏成闭源 prompt 搬运站、脚本杂物箱或品牌私货库。

## 测试日期：2026-04-19
## 文档版本：v1.2.0

## 🙏 欢迎什么样的贡献

欢迎提交：

- 更好的设计工作流规则
- 更清晰的交付与验证规范
- 新的使用示例与触发案例
- 通用的 HTML 起步模板
- `references/` 文档补强
- `scripts/validate.sh` 或 CI 改进
- README / 维护文档补强

不欢迎提交：

- 逐字搬运第三方专有系统提示词
- 与设计工作流无关的脚本堆砌
- 私有品牌规范、私有账号信息、私人路径
- 明显不能跨项目复用的经验碎片
- 把仓库改造成平台绑定的重工具链

## 🧭 提交前先判断改动该放哪里

| 类型 | 归属位置 |
|---|---|
| 主工作流与高层原则 | `SKILL.md` |
| 细规则 / checklist / 方法论 | `references/` |
| 起步 HTML 文件 | `templates/` |
| 自动校验逻辑 | `scripts/` |
| 使用方式、安装、社区说明 | 根目录文档 |

如果你不确定放哪，优先在 Issue 里先问，避免把根目录塞满。

## 🐛 报告 Bug 的方式

请优先使用 GitHub Issue 模板，并尽量提供：

1. 你使用的代理环境（Codex / Claude Code / OpenCode 等）
2. 触发 skill 的原始任务描述
3. 你实际读了哪些文件（例如只读了 `SKILL.md`，还是也读了 `references/`）
4. 出现的问题
5. 你原本预期的行为
6. 如果问题与模板或脚本有关，请附最小复现步骤

## 💡 提交功能建议的方式

功能建议请优先说明这几件事：

1. 它要解决什么真实设计交付问题
2. 为什么不能只靠现有规则解决
3. 它更适合放在 `SKILL.md`、`references/`、`templates/` 还是 `scripts/`
4. 它是否跨项目可复用

## 🔧 提交代码 / 文档流程

1. Fork 并 Clone 仓库
2. 创建分支：`git checkout -b feature/your-change`
3. 修改文档、模板或脚本
4. 如有必要，同步更新 README / CHANGELOG / TODOS
5. 运行：`bash ./scripts/validate.sh`
6. 自检：确认没有私人路径、私人邮箱、私有品牌或闭源残留
7. 提交：`git commit -m "feat: your change"`
8. 推送分支并发起 PR

## 📝 提交信息规范

推荐使用 Conventional Commits：

- `feat:` 新功能、新规则、新模板
- `fix:` 修复错误
- `docs:` 文档修改
- `refactor:` 重构但无行为变化
- `test:` 测试或验证改进
- `chore:` 杂务维护

示例：

```bash
git commit -m "feat: add motion demo starter guidance"
git commit -m "docs: expand contributing and security docs"
git commit -m "fix: tighten validate script governance checks"
```

## ✅ PR 最低要求

一个可合并的 PR 至少应满足：

- 没有敏感信息
- 没有逐字复制专有内容
- 内容可跨项目复用
- 文档结构清晰
- README 与目录结构保持一致
- `bash ./scripts/validate.sh` 通过

如果 PR 涉及以下内容，还要额外说明：

- **修改 `SKILL.md`**：为什么该规则值得进入主入口
- **新增 `references/`**：为什么不是直接写进 `SKILL.md`
- **新增模板**：为什么它是通用起步模板，不是私有页面残片
- **修改校验脚本**：会不会把正常开源内容误杀

## 👀 审查标准

维护者会重点看这些问题：

1. 这项改动有没有让 skill 更像真正的设计交付流程？
2. 它是不是跨项目、跨用户都可复用？
3. 它有没有把仓库往“抄 prompt”或“堆脚本”方向带偏？
4. 是否引入了不该公开的信息？
5. 是否增加了维护负担却没有明显收益？

## 🛡️ 行为准则

请遵守 [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md)。

简单说：
- 对人礼貌，对事直接
- 可以强烈反对观点，但不要攻击人
- 讨论聚焦事实、证据、设计判断和实现边界

## 🔐 安全问题反馈

如果你发现：
- 敏感信息泄露
- 验证脚本存在绕过路径
- 文档中误放了不应公开的内容

请不要直接公开发 Issue，按 [SECURITY.md](./SECURITY.md) 处理。

## 📌 维护建议

- 小改动优先做最短可行修改，不要顺手大改整个仓库
- 新规则先放对位置，再考虑写多细
- 如果你补了新方向，记得同步更新 `CHANGELOG.md` 和 `TODOS.md`

感谢你帮助这个仓库保持“skill-first、方法论优先、可公开复用”的方向。
