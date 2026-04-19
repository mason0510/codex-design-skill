# 使用与维护指南

## 测试日期：2026-04-19
## 文档版本：v1.1.0

## 一、如何使用这份 skill

### 1. 什么时候启用

当用户要求：
- 做高保真 HTML 原型
- 做 HTML 幻灯片或 pitch deck
- 做动效 demo / 视频风格页面
- 按现有设计系统重建界面
- 给出多个视觉 / 交互 / 信息密度方向

就应考虑启用这份 skill。

### 2. 什么时候不要启用

- 普通前端业务开发
- 只修一个局部 CSS 问题
- 纯后端接口与数据库任务
- 明显要求逐字复制第三方专有 prompt

### 3. 推荐使用顺序

```text
理解需求
→ 确认交付物类型
→ 收集设计上下文
→ 判断是否需要变体 / tweak
→ 先交一个可运行主文件
→ 再做视觉和交互补强
→ 最后验证与交付
```

## 二、references 的使用方式

### `references/design-context-intake.md`
用于：
- 需求模糊
- 上下文不足
- 需要先问清楚“做什么”和“按谁的视觉做”

### `references/deliverable-modes.md`
用于：
- 区分原型、幻灯片、动效 demo 的交付差异
- 避免所有任务都掉进网页套路

### `references/variants-and-tweaks.md`
用于：
- 用户要求多个方向
- 需要把多个方案放进一个主文件比较
- 需要可持久化 tweak 面板

### `references/verification-and-handoff.md`
用于：
- 交付前自检
- 收尾时确认页面可加载、无明显报错、主流程可用

### `references/open-source-boundary.md`
用于：
- 维护者不确定哪些内容可以吸收、哪些不能照搬
- 发布前做边界复核

## 三、模板如何使用

### `templates/prototype-starter.html`
适合：
- 高保真原型起步
- 需要简单 tweak 面板
- 需要主题或密度切换

### `templates/deck-starter.html`
适合：
- HTML 幻灯片
- 需要 16:9 画布与翻页状态保持

### 模板使用原则

- 模板是起点，不是终点
- 不要机械复制模板后直接交付
- 一旦有用户现有设计系统，应优先向设计系统对齐

## 四、维护规则

### 1. 修改 `SKILL.md` 的标准

优先加入：
- 跨项目可复用的设计流程规则
- 高频错误的纠偏规则
- 明显提升交付质量的判断标准

不要加入：
- 单项目品牌细节
- 某个闭源环境的内部指令
- 完全可以由脚本替代的机械校验

### 2. 修改 `references/` 的标准

适合放入 `references/` 的内容：
- 主 skill 不宜过长但又值得沉淀的细规则
- 多场景可复用的 checklist
- 比模板更稳定的方法论

### 3. 模板新增标准

只有同时满足以下条件，才建议新增模板：
- 高频复用
- 结构足够通用
- 不依赖私有品牌或资源
- 明显能降低起步成本

## 五、发布前检查清单

每次准备发布前至少确认：

- `SKILL.md` frontmatter 只有 `name` 与 `description`
- `bash ./scripts/validate.sh` 通过
- 没有本机路径、私人邮箱、私有账号或闭源残留
- README 与目录结构一致
- references 与 templates 没有失控膨胀
- 没有把仓库做成工具堆砌或提示词抄录站

## 六、常见维护任务

### 任务 1：补一个新的设计规则
步骤：
1. 先判断是否跨项目可复用
2. 再决定放 `SKILL.md` 还是 `references/`
3. 若影响首页认知，同步更新 `README.md`
4. 跑 `validate.sh`

### 任务 2：补一个新的使用示例
步骤：
1. 写进 `examples/usage.md`
2. 保持“任务触发 + 期望行为”的结构
3. 不要写入私有项目细节

### 任务 3：补一个新模板
步骤：
1. 保证是通用 HTML 起步模板
2. 写清适用场景
3. 不要引入私有依赖或平台耦合
4. 跑 `validate.sh`

## 七、故障排查

### 问题 1：CI 失败
优先检查：
- 是否缺文件
- `SKILL.md` frontmatter 是否被写坏
- 是否引入了敏感词或专有残留

### 问题 2：skill 搜不到
优先检查：
- `name` 是否清晰
- `description` 是否写成“何时使用”而不是“它做什么”
- 是否覆盖 `prototype / slides / motion / design system / high-fidelity` 等关键词

### 问题 3：仓库越来越像杂物箱
处理方式：
- 通用规则留在 `SKILL.md`
- 细规则留在 `references/`
- 模板留在 `templates/`
- 验收逻辑留在 `scripts/`
- 不要把无关资料堆在根目录
