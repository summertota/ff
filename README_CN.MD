# ⚡ ff (Hold & Fuck) — 专为手残党打造的终极极客命令行时光机

`ff` 是一款**零依赖、超轻量且速度极快**的**本地单文件/文件夹时光机**。它专门为了拯救那些饱受误操作（如 `rm -rf`、改错系统配置、失手覆盖代码）折磨的开发者而生。

通过在底层精妙地编排**原生 Git 的图存储能力**，`ff` 在你的终端里实现了像 `Ctrl + Z` 一样可无限无损连续回退的“撤销”体验。它完全隐蔽在后台，不会在你的工作项目目录里留下任何恶心的 `.git` 污染，也绝不浪费一丝磁盘空间。

<p align="center">
  <a href="./README.md">English Version</a> | <b>简体中文</b>
</p>

---

## 🚀 一键全自动安装

克隆本仓库并直接运行我们的自动化配置脚本：
```bash
git clone https://github.com
cd ff && chmod +x install.sh && ./install.sh
```

脚本会自动将核心引擎写入系统的全局可执行路径 `/usr/local/bin/ff`，并为你优雅地绑定全局软链接分身：`hold`、`fuck` 和 `log`。

---

## 🕹️ 核心交互指令（这才叫极客）

### 1. 安全存盘，锁定状态 (`hold`)
每当你的代码或系统配置文件达到一个阶段性完美的稳定状态时，随时给它上锁：
```bash
$ hold config.json
⚡ [Hold] Secured: config.json

# 同样完美支持整个文件夹或通配符 (*)
$ hold src/
⚡ [Hold] Secured: src/
```

### 2. 逆转时空，一键翻盘 (`fuck`)
不小心改崩了代码？或者失手执行了 `rm -rf src` 让整个文件夹人间蒸发？不要慌，直接施展复活术：
```bash
$ fuck src/
💥 [Fucked] Restored from the last secured snapshot!
```
**🧠 莫比乌斯环设计：** 如果你连续敲击 `fuck`，它就像键盘上的 `Ctrl + Z` 一样，**自动、无损地在后台沿着你的历史时间线不断向更早的版本倒流**。当它退到你最初 hold 的起点时，下一次敲击会自动触发“重力反转”，带你完美滚动回最后那个最新的快照状态。闭环滚动，数据绝对不丢！

### 3. 打开天眼，洞察时空 (`log`)
在连续高频撤销了几轮之后，不记得自己正踩在历史的哪一个切片上？直接看穿时间线：
```bash
$ log test_dir
⏳ [History Timeline for: test_dir]
  @1 -> Commit: e192cf7 (53 minutes ago)
  @2 -> Commit: 6ab7ec9 (49 minutes ago) 👉 CURRENT TIMELINE
  @3 -> Commit: 7139de3 (48 minutes ago)
  @4 -> Commit: d763f45 (39 minutes ago) (LATEST BACKUP)
```
- **`👉 CURRENT TIMELINE`**：精准高亮你当前磁盘文件正踩着的历史落脚点。
- **`(LATEST BACKUP)`**：代表你最后一次 hold 的最新备份点。

### 4. 跨越跨度，精准空降 (`fuck @号`)
不想用莫比乌斯环慢慢滚？如果你在 log 里看清了想去的地方，可以直接指定版本号实现时空折叠：
```bash
$ fuck test_dir @1
💥 [Fucked] Precision jump successful! Restored to version @1.
```

---

## 📊 幕后黑客原理

- **隐蔽防灾**：所有的历史快照都在你的家目录隐藏空间 `~/.ff_core/` 里进行扁平化路径映射（例如 `__Users__name__project`）。无论你把原始文件删成什么样，它都能无中生有地重新重构路径并将其从虚无中捞回来。
- **极致省盘**：得益于 Git 底层的“内容寻址”去重机制以及 Delta 增量压缩算法。即使你对一个 50MB 的文件夹连续 `hold` 上百次，只要核心代码只改动了几行，它占用的额外磁盘空间就**几乎为 0 字节**。

---

## 📄 开源授权协议
基于 [MIT 许可协议](LICENSE) 开源。祝你时空旅行愉快，尽情作死，绝不翻车。

