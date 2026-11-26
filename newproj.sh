#!/usr/bin/env bash
# newproj.sh — 在仓库里新建一个 C 项目骨架
# 用法: ./newproj.sh <编号-名字> [可执行文件名]
# 例子: ./newproj.sh 02-led blinky
#       ./newproj.sh 03-fir fir

set -eu

ROOT="$(cd "$(dirname "$0")" && pwd)"
TPL="$ROOT/templates"

if [ "${1:-}" = "" ]; then
    echo "用法: $0 <目录名> [可执行文件名]"
    echo "例子: $0 02-led blinky"
    exit 1
fi

NAME="$1"
TARGET="${2:-$(echo "$NAME" | sed 's/^[0-9]*-//')}"
DIR="$ROOT/$NAME"

if [ -e "$DIR" ]; then
    echo "错误: $DIR 已存在"
    exit 1
fi

if [ ! -f "$TPL/Makefile" ]; then
    echo "错误: 找不到模板 $TPL/Makefile"
    exit 1
fi

mkdir -p "$DIR"

# 用 sed 把占位符替换掉；注意 Makefile 的 Tab 缩进必须原样保留
sed "s/__TARGET__/$TARGET/g" "$TPL/Makefile" > "$DIR/Makefile"
sed "s/__TARGET__/$TARGET/g" "$TPL/main.c"   > "$DIR/main.c"
sed -e "s/__NAME__/$NAME/g" -e "s/__TARGET__/$TARGET/g" "$TPL/README.md" > "$DIR/README.md"

echo "已创建:"
ls -l "$DIR"
echo
echo "下一步:"
echo "  cd $NAME && make && ./$TARGET"
