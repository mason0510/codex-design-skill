# Codex Design Skill 架构说明

## 测试日期：2026-04-19
## 文档版本：v1.1.0

## 一句话结论

这是一个 **skill-first + progressive references + lightweight templates** 的设计仓库。
核心是工作流与判断，其次才是模板和脚本。

## 整体架构

```text
用户设计任务
    ↓
SKILL.md（主入口）
    ↓
references/（按需加载细规则）
    ↓
templates/（快速起步文件）
    ↓
scripts/validate.sh（最小验收）
```

## 模块分层

### 1. 主入口层：`SKILL.md`

职责：
- 定义何时启用这份 skill
- 给出核心工作流
- 明确交付标准与常见错误
- 指向更细的 references

为什么这样做：
- 主 skill 是最常被读取的文件
- 如果它过胖，会降低可读性与触发效率

### 2. 细规则层：`references/`

职责：
- 承接主 skill 不宜堆太多的细则
- 提供按主题拆分的参考文档
- 让仓库更像一个成熟开源 skill，而不是单文件提示词

当前拆分：
- `design-context-intake.md`
- `deliverable-modes.md`
- `variants-and-tweaks.md`
- `verification-and-handoff.md`
- `open-source-boundary.md`

### 3. 起步模板层：`templates/`

职责：
- 提供最小可运行的 HTML 起点
- 降低从空文件开始的摩擦
- 帮维护者快速验证 skill 的输出方向

原则：
- 模板只做“起点”，不做整套框架
- 避免变成大而全组件库

### 4. 接入说明层：`agents/`

职责：
- 说明这个 skill 在 Codex 类环境里的接入方式
- 明确主入口与推荐加载顺序

### 5. 验收层：`scripts/validate.sh` + CI

职责：
- 校验仓库文件是否齐全
- 校验 `SKILL.md` frontmatter 是否合规
- 扫描明显敏感信息或专有残留
- 在 GitHub Actions 中跑最小自动检查

## 关键设计决策

### 决策 1：不逐字复制第三方系统提示词

原因：
- 直接复制的开源价值低
- 容易带入专有表述与隐含实现细节
- 提炼为中性工作流后，更适合跨环境复用

### 决策 2：保持 skill-first，而不是工具堆砌

原因：
- 真正难的是判断与流程，不是脚本数量
- 脚本与模板只应服务主 skill，不应喧宾夺主

### 决策 3：引入 progressive references

原因：
- 单文件仓库不够专业
- 但把所有规则塞进 `SKILL.md` 也会失控
- references 能同时解决“专业度”和“主入口可读性”

### 决策 4：模板只保留最小起步能力

原因：
- 模板过多会把仓库做成伪组件库
- 当前阶段更重要的是方法论沉淀，而不是大体量素材堆积

## 数据流

```text
用户说“做一个高保真原型”
→ SKILL.md 判断：需要先澄清与收集上下文
→ 读取 references/design-context-intake.md
→ 选择原型交付模式与变体策略
→ 必要时参考 templates/prototype-starter.html 起步
→ 最终用 verification-and-handoff.md 做收尾检查
```

## 后续扩展建议

### 可继续补的方向
- deck / prototype / motion 三个更细分的子 skill
- 更多可替换的 HTML 起步模板
- 更细的“从现有代码库重建设计”的检查清单

### 暂不建议做的方向
- 大量平台专用脚本
- 伪装成通用设计引擎的复杂工具链
- 复制第三方闭源环境的内部接口与术语
