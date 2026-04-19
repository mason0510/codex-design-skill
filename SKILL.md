---
name: codex-design-skill
description: Use when the user asks for high-fidelity HTML design deliverables, tweakable prototypes, slide decks, animated demos, design-system-aligned UI exploration, or wants Codex to work like a design delivery partner instead of a generic page coder.
---

# Codex Design Skill

## Overview

这个 skill 的目标不是“多写几个漂亮 div”，而是把 Codex 拉到 **设计交付模式**：
先理解目标，再获取上下文，再输出可运行交付物，最后完成验证与收尾。

核心原则：
- 先问设计问题，再开始画
- 先读设计上下文，再决定视觉方向
- 默认交付可运行 HTML，而不是一长段解释
- 默认提供可比较的变体或 tweak 维度
- 交付前必须验证加载、交互和稳定性

## When to Use

当用户出现以下需求时使用：
- “做一个高保真原型 / 交互 demo / HTML 设计稿”
- “做一套 HTML 幻灯片 / 演示文稿 / pitch deck”
- “做动效页面 / 视频风格页面 / 设计探索页”
- “按现有设计系统重建某个界面”
- “给我多个视觉方向、布局方向、交互方向”
- “别做成普通网页，要像产品设计交付物”

不要用于：
- 普通 CRUD 页面开发
- 纯接口或后端任务
- 只修一个小 CSS bug 的任务
- 逐字复制第三方专有系统提示词或闭源设计环境

## Workflow

```text
理解任务
→ 明确交付物类型与保真度
→ 收集设计上下文
→ 确认是否需要多变体 / tweak
→ 先交一个可运行主文件
→ 再补强视觉、交互、节奏与状态保持
→ 最后验证并交付
```

### 1. 先把问题问对

优先确认：
1. 交付物是什么：原型、幻灯片、动效页、展示页还是设计探索页？
2. 保真度要求：线框、中保真还是高保真？
3. 是否需要多个方案？是视觉变体、流程变体还是文案变体？
4. 是否已有设计系统、组件库、截图、品牌规范或现有代码？
5. 用户更在意：流程、文案、视觉、动效中的哪一项？

如果上下文不足，不要硬猜完整视觉体系。

### 2. 先找上下文，不要闭门造车

默认优先读取：
1. 用户给的现有代码与组件
2. 用户给的截图、Figma、示意图、参考页
3. 用户已有品牌色、字体、间距、语气
4. 实在没有时，才自己给出原创方向

如果是在已有产品上做延展，要先说出你观察到的视觉语汇：
- 配色节奏
- 圆角 / 阴影 / 边框方式
- 字体与文案语气
- 留白密度与版式节奏
- hover / active / motion 风格

### 3. 默认交付物是 HTML 作品

- 文件名要有描述性，例如：`Growth Dashboard Prototype.html`
- 做大改版时保留版本，例如：
  - `Growth Dashboard Prototype.html`
  - `Growth Dashboard Prototype v2.html`
- 单文件尽量不要无限膨胀；复杂页面应拆小组件、小脚本或多个辅助文件

### 4. 不是所有设计都该长得像网页

- 幻灯片 → 要像演示文稿，而不是官网首页
- 动效 demo → 要像 motion board，而不是后台表格页
- 交互原型 → 要像产品流程，而不是营销落地页

### 5. 默认给用户比较空间

只要适合，就给出可切换维度：
- 配色方案
- 信息密度
- 布局方向
- 动效强度
- 文案长短

目标不是一次替用户拍板，而是让用户能快速比较。

## Visual / UX Rules

### 1. 避免 AI 套板感

少做这些高频平庸套路：
- 滥用渐变背景
- 用 emoji 硬撑层次
- 卡片堆砌 + 假数据灌水
- 没有素材却硬画低质量伪插画
- 不分场景，所有东西都做成“网页风”

### 2. 占位符比劣质伪素材更好

如果缺真实图标、插画、产品图：
- 用明确占位符
- 标注这里需要什么资产
- 不要拿低质量伪素材冒充完成品

### 3. 设计关键是节奏，不是堆内容

- 不要为了填满空间乱加模块
- 不要编造无意义数字与统计
- 让留白、层次、版式去解决“空”的问题

## Delivery and Validation

交付前至少完成以下检查：
1. 页面可干净加载
2. 控制台无明显报错
3. 主流程可点通或可翻页
4. tweak / 变体切换后仍稳定
5. 视觉层级清晰，没有明显对齐与留白事故

## Progressive References

当需要更细规则时，再继续读取：
- `references/design-context-intake.md`：需求澄清与上下文收集
- `references/deliverable-modes.md`：原型 / 幻灯片 / 动效三类交付规则
- `references/variants-and-tweaks.md`：多变体与 tweak 面板策略
- `references/verification-and-handoff.md`：交付前验证与收尾检查
- `references/open-source-boundary.md`：开源边界与不可照搬内容

如需快速起步文件，可参考：
- `templates/prototype-starter.html`
- `templates/deck-starter.html`

## Common Mistakes

### 错误 1：没拿到上下文就直接画
后果：做出来像通用 AI 套板，不像用户产品。

### 错误 2：把“设计探索”做成“网页拼装”
后果：有页面，没有设计判断。

### 错误 3：只有一个方向，没有比较空间
后果：用户只能整体接受或整体推翻。

### 错误 4：只顾视觉，不做验证
后果：交付物打开就报错，或一交互就坏。
