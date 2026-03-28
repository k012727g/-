# -

## Git Status 檢查工具

本專案提供兩種方式來檢查 Git 狀態：

### 方法 1: 執行狀態檢查腳本

```bash
./check_status.sh
```

這個腳本會顯示：
- 當前分支資訊
- 檔案變更狀態
- 未追蹤的檔案
- 準備提交的檔案
- 最近的提交記錄

### 方法 2: 查看狀態報告

查看 `STATUS_REPORT.md` 檔案，內含：
- 目前主分支狀態
- 工作樹狀態
- 專案檔案列表
- 最近的提交歷史

### 基本 Git 指令

```bash
# 查看當前狀態
git status

# 查看分支
git branch -a

# 查看最近提交
git log --oneline -5
```

## Fork openxc/uds-c 仓库指南

本项目包含了 fork openxc/uds-c 仓库的完整指南和工具。

### 🚀 快速开始

最简单的方法：
1. 访问 https://github.com/openxc/uds-c
2. 点击右上角的 **Fork** 按钮
3. 完成！

更多选项：

**方法 1: 使用交互式脚本 (推荐)**

```bash
./fork_helper.sh
```

这个脚本提供交互式菜单，支持：
- 使用 GitHub CLI 自动 fork
- 显示手动 fork 步骤
- 显示 API fork 示例
- 克隆原始仓库

**方法 2: 查看详细文档**

- 📖 [快速开始指南](QUICKSTART.md) - 最快的 fork 方法
- 📋 [完成检查清单](FORK_CHECKLIST.md) - 逐步检查确保成功
- 📚 [中文完整指南](FORK_GUIDE.md) - Fork openxc/uds-c 仓库的详细步骤
- 📚 [English Guide](FORK_GUIDE_EN.md) - Complete guide in English

### 关于 openxc/uds-c

- **仓库地址**: https://github.com/openxc/uds-c
- **描述**: OpenXC UDS (Unified Diagnostic Services) 的 C 语言实现
- **协议**: BSD License
- **用途**: 汽车诊断通信标准协议实现

### 资源链接

- 📑 [资源汇总](FORK_RESOURCES.md) - 所有文档和工具的完整索引
- [GitHub Fork 官方文档](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
- [GitHub CLI 文档](https://cli.github.com/manual/)
- [openxc/uds-c 仓库](https://github.com/openxc/uds-c)