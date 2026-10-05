#!/usr/bin/env bash

# ==============================================================================
# 极客时间机器：一键全自动配置与安装脚本 (install.sh)
# ==============================================================================

# 确保脚本在发生错误时立即退出
set -e

if [ ! -f "ff" ]; then
    echo "❌ 错误: 未在当前目录下找到核心引擎 'ff' 文件！"
    echo "💡 请确保您是在包含 'ff' 文件的目录下运行此脚本。"
    exit 1
fi

echo "🚀 开始安装 极客时间机器 (ff)..."

# 1. 赋予核心引擎可执行权限
chmod +x ff

# 2. 移动核心至全局系统路径
echo "🔒 请求权限以将引擎写入全局系统目录 (/usr/local/bin)..."
sudo cp ff /usr/local/bin/ff

# 3. 全自动建立全套全局软链接分身
echo "🔗 正在为您自动绑定全局命令：[hold]、[fuck]、[log]..."
sudo ln -sf /usr/local/bin/ff /usr/local/bin/hold
sudo ln -sf /usr/local/bin/ff /usr/local/bin/fuck
sudo ln -sf /usr/local/bin/ff /usr/local/bin/log

echo "===================================================="
echo "🎉 安装成功！您的系统已经成功装备‘时空莫比乌斯环’！"
echo "===================================================="
echo "💡 快速指南:"
echo "  1. hold <file_or_dir>    -> 锁定当前状态"
echo "  2. fuck <file_or_dir>    -> 像 Ctrl+Z 一样无限循环安全撤销"
echo "  3. log  <file_or_dir>    -> 带有指针高亮的全面时间线天眼"
echo "  4. fuck <file_or_dir> @1 -> 跨越时空精准恢复到指定版本"
echo "  5. ff list / clear       -> 查看所有被保护资产 / 抹除秘密仓库"

