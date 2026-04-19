# Codex Design Skill

> 默认中文首页 | [README_ZH.md](./README_ZH.md) | [README_EN.md](./README_EN.md)

一个 **skill-first** 的开源仓库：把 Codex 从“普通 HTML 编码器”拉到“设计交付型助手”。

![License](https://img.shields.io/badge/license-MIT-green.svg)
![Type](https://img.shields.io/badge/type-skill--first-blue.svg)
![Focus](https://img.shields.io/badge/focus-design%20delivery-purple.svg)
![Workflow](https://img.shields.io/badge/workflow-context--first-orange.svg)

## ✨ 这是什么

`codex-design-skill` 不是一段闭源系统提示词的搬运，也不是一个只会生成网页外壳的模板仓库。

它做的是三件事：

- 提炼一套 **可公开复用** 的设计工作流
- 帮 Codex 处理 **高保真 HTML 原型 / 幻灯片 / 动效 demo / 设计探索**
- 把“先问清楚、先找上下文、先交可运行产物、最后验证”固化成 skill

## 🧠 核心设计观

```text
需求先于视觉
上下文先于风格
交付物先于解释
验证先于收尾
```

这份 skill 的核心不是“让页面更花”，而是让设计任务更像真正的交付过程：

- 先确认交付物类型、保真度、受众与变体需求
- 先读取设计系统、截图、代码、品牌语汇
- 再决定版式、视觉节奏、动效强度与 tweak 维度
- 最后做页面加载、控制台、主流程与切换稳定性验证

## ✅ 解决什么问题

很多代码助手做设计类任务时会掉进这几个坑：

- 一上来就写页面，不先问需求
- 没有上下文，硬猜品牌风格
- 把所有任务都做成“普通网页”
- 只给一个方案，用户无法比较
- 交付前不验证，打开就报错

`codex-design-skill` 的目标，就是系统性压掉这些错误。

## 🚀 适用场景

| 场景 | 适合度 | 说明 |
|---|---|---|
| 高保真 HTML 原型 | ✅ | 产品流程、界面探索、交互稿 |
| HTML 幻灯片 / pitch deck | ✅ | 16:9 演示稿、汇报稿 |
| 动效 / 视频风格页面 | ✅ | motion board、演示 demo |
| 基于现有设计系统重建 UI | ✅ | 先读上下文，再做延展 |
| 普通 CRUD 开发 | ❌ | 这不是它的主职责 |
| 逐字复制第三方专有 prompt | ❌ | 明确禁止 |

## 📦 仓库结构

```text
codex-design-skill/
├── SKILL.md                          # 主入口：何时使用、核心工作流、引用指针
├── README.md                         # 默认中文首页
├── README_ZH.md                      # 中文完整版
├── README_EN.md                      # 英文版
├── ARCHITECTURE.md                   # skill-first 架构说明
├── USAGE_AND_MAINTENANCE.md          # 使用与维护指南
├── CONTRIBUTING.md                   # 贡献指南
├── CHANGELOG.md                      # 版本记录
├── TODOS.md                          # 后续规划
├── agents/
│   └── codex.md                      # Codex 侧接入说明
├── references/
│   ├── design-context-intake.md      # 需求澄清与上下文收集
│   ├── deliverable-modes.md          # 原型 / 幻灯片 / 动效规则
│   ├── variants-and-tweaks.md        # 多变体与 tweak 策略
│   ├── verification-and-handoff.md   # 验证与交付收尾
│   └── open-source-boundary.md       # 开源边界与不可照搬内容
├── templates/
│   ├── prototype-starter.html        # 原型起步模板
│   └── deck-starter.html             # 幻灯片起步模板
├── examples/
│   └── usage.md                      # 触发示例
├── scripts/
│   └── validate.sh                   # 结构 + 敏感词校验
└── .github/workflows/ci.yml          # CI
```

## ⚡ 快速开始

### 1. 克隆仓库

```bash
git clone https://github.com/mason0510/codex-design-skill.git
cd codex-design-skill
```

### 2. 安装到本地 skills 目录

#### Codex

```bash
mkdir -p ~/.codex/skills
cp -R . ~/.codex/skills/codex-design-skill
```

#### 其他兼容环境

把本仓库复制到对应的 skill 目录即可，主入口始终是：

```text
SKILL.md
```

### 3. 运行最小校验

```bash
bash ./scripts/validate.sh
```

## 🛠️ 这份仓库包含什么

### 1. 一个精简主 skill
`SKILL.md` 只放核心判断、主工作流和引用入口，不把所有细节一股脑塞进去。

### 2. 一组按需加载的参考文档
`references/` 用来承接细规则，让仓库更专业，同时避免主 skill 过胖。

### 3. 两个可直接改的起步模板
- `prototype-starter.html`
- `deck-starter.html`

它们不是要替代真实设计，而是帮助更快起步。

### 4. 一个最低限度但实用的验证脚本
`validate.sh` 会检查：
- 必要文件是否存在
- `SKILL.md` frontmatter 是否合规
- 是否含明显敏感路径 / 邮箱 / 专有提示词残留

## 📚 参考文档

- [架构说明](./ARCHITECTURE.md)
- [使用与维护](./USAGE_AND_MAINTENANCE.md)
- [示例](./examples/usage.md)
- [贡献指南](./CONTRIBUTING.md)
- [变更记录](./CHANGELOG.md)
- [待办事项](./TODOS.md)

## 🚧 非目标

这个仓库**不追求**：

- 复刻某个闭源设计环境的全部机制
- 搬运专有品牌术语或私有 prompt
- 变成脚本堆砌的大杂烩
- 用大量模板替代设计判断

## 🤝 开源边界

本项目是 **提炼版设计 skill**，不是第三方系统提示词的逐字复制品。

明确边界：
- 保留可复用的方法论
- 不照搬专有表述
- 不捆绑私有品牌环境
- 不输出闭源产品内部实现细节

## ⭐ Star 增长趋势图

[![Star History Chart](https://api.star-history.com/svg?repos=mason0510/codex-design-skill&type=Date)](https://star-history.com/#mason0510/codex-design-skill&Date)

## ❓ 小白 FAQ

### 1. 这是一个 CLI 工具吗？
不是。它首先是一个 **skill 仓库**，核心价值在工作流、判断规则和参考文档。

### 2. 我不会设计，也能用吗？
可以。它不是要求你先会设计，而是帮助你把“设计类任务”从乱写页面，拉到更像交付物的流程。

### 3. 我只想修个按钮样式，适合用它吗？
不适合。那种小改动直接按普通前端修复做就行。

### 4. 我能把它当成闭源 prompt 的替代品吗？
不能等价替代。它是提炼后的开源工作流，不是闭源环境的一比一复制。

### 5. 为什么要拆成 references 和 templates？
因为主 `SKILL.md` 应该保持精简；细规则放 `references/`，起步文件放 `templates/`，这样仓库更稳。

## 📄 License

MIT
