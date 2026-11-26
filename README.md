# edge-ai-learning

电子信息 / 算法与信息处理 / 端侧 AI 推理优化 · 学习与项目记录

深圳大学 · 2026 级 · 电子信息工程

## 目标

- 打磨 C 语言地基（指针 / 内存 / 位操作）
- 用 WSL2 + gcc + Makefile 走通 Linux 下的 C 开发流程
- 每个项目 README 都写清三个数字：耗时、内存占用、误差

## 工程索引

| 目录 | 内容 | 状态 |
| --- | --- | --- |
| `01-hello` | hello world + Makefile，环境自检 | ✅ |

## 环境

- Windows 11 + WSL2 (Ubuntu 22.04)
- gcc 11.4 / GNU Make 4.3 / gdb / git 2.34.1
- 编译一律在 WSL 的 `~/` 下进行，不在 `/mnt/c`、`/mnt/d` 里 make

## 常用命令

```bash
cd ~/edge-ai-learning/01-hello
make          # 编译
./hello       # 运行
make clean    # 清理
```
