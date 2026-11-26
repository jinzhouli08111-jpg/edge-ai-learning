# 01-hello

WSL2 + gcc + Makefile 环境自检工程。

## 目的

确认 Linux 下的 C 工具链完整可用，并跑通「写代码 → make → 运行 → clean」这条最小闭环。

## 三个数字

| 指标 | 数值 |
| --- | --- |
| 编译耗时 | 待填（12/15 补） |
| 二进制大小 | 待填（12/15 补） |
| 内存占用 | 待填（12/15 补） |

## 命令

```bash
make          # 编译，产物 hello
./hello       # 运行，输出 hello from wsl
make clean    # 清理
```

## 收获

- Makefile 的缩进必须是 Tab，不是空格（`cat -A` 显示为 `^I`）
- `make` 靠时间戳判断是否重编：目标比依赖新就跳过
- `-g` 生成 `.debug_info` 段，没它 gdb 看不到行号
- `.PHONY` 防止伪目标被同名文件「顶掉」
