# ⚡ ff (Hold & Fuck) — The Ultimate Minimalist Time Machine for Devs
<p align="center">
  <b>English</b> | <a href="./README_CN.MD">简体中文说明</a>
</p>

---

`ff` is a zero-dependency, ultra-lightweight, and lightning-fast **local time machine** built for developers who suffer from fat-finger mistakes (`rm -rf`, wrong config overwrites). 

By leveraging native **Git orchestration** under the hood, `ff` provides a loopable, lossless `Ctrl + Z` undo experience right inside your terminal, without wasting disk space or cluttering your project folder with `.git` dotfiles.

---

## 🚀 One-Line Installation

Clone this repository and run the installer:
```bash
git clone https://github.com
cd ff && chmod +x install.sh && ./install.sh
```

This will automatically move the core engine to `/usr/local/bin/ff` and bind global symlinks for `hold`, `fuck`, and `log`.

---

## 🕹️ Core Interaction (The Geek Way)

### 1. Secure a Snapshot (`hold`)
Whenever you reach a stable state in a file or directory, lock it down:
```bash
$ hold config.json
⚡ [Hold] Secured: config.json

$ hold src/
⚡ [Hold] Secured: src/
```

### 2. Time-Loop Undo (`fuck`)
Messed up a file or accidentally executed `rm -rf src`? Bring it back instantly:
```bash
$ fuck src/
💥 [Fucked] Restored from the last secured snapshot!
```
If you hit `fuck` consecutively, it acts like `Ctrl + Z`, **safely looping backward through your history** without losing data. Once it hits the oldest slice, it rolls seamlessly back to the latest snapshot (Mobius Loop).

### 3. Space-Time Peek (`log`)
Need to know exactly where your current working directory stands in history? Open your third eye:
```bash
$ log test_dir
⏳ [History Timeline for: test_dir]
  @1 -> Commit: e192cf7 (53 minutes ago)
  @2 -> Commit: 6ab7ec9 (49 minutes ago) 👉 CURRENT TIMELINE
  @3 -> Commit: 7139de3 (48 minutes ago)
  @4 -> Commit: d763f45 (39 minutes ago) (LATEST BACKUP)
```

### 4. Precision Space Warp (`fuck @id`)
Want to skip the loop and jump directly to an old state? Just call the ID:
```bash
$ fuck test_dir @1
💥 [Fucked] Precision jump successful! Restored to version @1.
```

---

## 📊 Under the Hood

- **Storage Location**: Everything is sequestered inside `~/.ff_core/` under flat path-key mapping (e.g., `__Users__name__project`).
- **Disk Efficiency**: Powered by Git's content-addressable SHA-1 deduplication and delta compression. Holding a 50MB folder 100 times costs almost **zero additional space** if only a few lines changed.
- **Resilience**: Even if you delete the original file, `fuck` will reconstruct the full directory paths and resurrect it from the void.

---

## 📄 License
Licensed under the [MIT License](LICENSE). Feel free to loop your time safely.

