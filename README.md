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