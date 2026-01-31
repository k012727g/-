# 專案對話重新初始化指南 / Project Conversation Reinitialization Guide

## 概述 / Overview

本指南說明如何重新初始化專案對話與協作追蹤系統，確保所有討論、決策和操作都能被完整記錄。

This guide explains how to reinitialize the project conversation and collaboration tracking system to ensure all discussions, decisions, and operations are fully recorded.

---

## 系統組成 / System Components

本追蹤系統包含以下核心檔案：
The tracking system consists of the following core files:

1. **CONVERSATION_LOG.md** - 對話記錄檔案 / Conversation log file
   - 記錄所有討論、決策和待辦事項
   - Records all discussions, decisions, and action items

2. **COLLABORATION_HISTORY.md** - 協作歷程檔案 / Collaboration history file
   - 記錄所有檔案操作和協作活動
   - Records all file operations and collaborative activities

3. **.conversation_state/metadata.json** - 系統元資料 / System metadata
   - 儲存系統狀態、統計資訊和設定
   - Stores system status, statistics, and configurations

4. **REINITIALIZATION_GUIDE.md** - 本指南 / This guide
   - 說明如何使用和維護追蹤系統
   - Explains how to use and maintain the tracking system

---

## 重新初始化步驟 / Reinitialization Steps

### 步驟 1: 備份現有記錄（如有）/ Step 1: Backup Existing Records (if any)

```bash
# 建立備份目錄
mkdir -p backups/backup_$(date +%Y%m%d_%H%M%S)

# 備份現有檔案
cp CONVERSATION_LOG.md backups/backup_$(date +%Y%m%d_%H%M%S)/ 2>/dev/null || true
cp COLLABORATION_HISTORY.md backups/backup_$(date +%Y%m%d_%H%M%S)/ 2>/dev/null || true
cp -r .conversation_state backups/backup_$(date +%Y%m%d_%H%M%S)/ 2>/dev/null || true
```

### 步驟 2: 清除舊狀態 / Step 2: Clear Old State

如需完全重置，可刪除現有追蹤檔案：
To completely reset, you can delete existing tracking files:

```bash
# 謹慎使用！這將刪除所有追蹤記錄
# Use with caution! This will delete all tracking records
rm -f CONVERSATION_LOG.md
rm -f COLLABORATION_HISTORY.md
rm -rf .conversation_state
```

### 步驟 3: 建立新的追蹤系統 / Step 3: Create New Tracking System

系統已自動建立，包含：
The system has been automatically created, including:

- ✅ 對話記錄檔案 / Conversation log file
- ✅ 協作歷程檔案 / Collaboration history file
- ✅ 系統元資料 / System metadata
- ✅ 初始化指南 / Initialization guide

### 步驟 4: 驗證系統 / Step 4: Verify System

檢查所有檔案是否已正確建立：
Check if all files are correctly created:

```bash
# 檢查檔案存在性
ls -la CONVERSATION_LOG.md
ls -la COLLABORATION_HISTORY.md
ls -la .conversation_state/metadata.json
ls -la REINITIALIZATION_GUIDE.md

# 檢查 JSON 格式
cat .conversation_state/metadata.json | jq '.' 2>/dev/null && echo "✓ JSON 格式正確" || echo "✗ JSON 格式錯誤"
```

---

## 日常使用指南 / Daily Usage Guide

### 記錄新對話 / Recording New Conversations

1. 開啟 `CONVERSATION_LOG.md`
2. 在「對話歷程」區段新增記錄
3. 填寫所有必要資訊（日期、時間、參與者、內容）
4. 更新待辦事項
5. 提交變更

### 記錄協作操作 / Recording Collaborative Operations

1. 開啟 `COLLABORATION_HISTORY.md`
2. 在「協作歷程」區段新增操作記錄
3. 更新「檔案操作記錄」表格
4. 更新統計資訊
5. 提交變更

### 更新系統狀態 / Updating System Status

編輯 `.conversation_state/metadata.json` 以更新：
Edit `.conversation_state/metadata.json` to update:

- 會話資訊 / Session information
- 統計數據 / Statistics
- 參與者清單 / Participant list
- 系統設定 / System configuration

---

## 檔案格式說明 / File Format Specifications

### CONVERSATION_LOG.md 格式
```markdown
### [日期] - [主題]
- **時間**: [HH:MM]
- **參與者**: [名單]
- **類型**: [類型]
- **內容摘要**: [摘要]
- **決議事項**: [決議]
- **待辦事項**: [清單]
```

### COLLABORATION_HISTORY.md 格式
```markdown
### [日期] - [操作類型]
- **時間**: [HH:MM]
- **執行者**: [名稱]
- **操作**: [描述]
- **影響範圍**: [範圍]
- **變更內容**: [內容]
- **備註**: [說明]
```

### metadata.json 格式
參見現有檔案的 JSON 結構
See existing file for JSON structure

---

## 維護建議 / Maintenance Recommendations

### 定期維護 / Regular Maintenance
- **每日**: 記錄當天的對話與操作
- **每週**: 檢視並更新待辦事項狀態
- **每月**: 備份追蹤檔案，檢查系統完整性

### 最佳實踐 / Best Practices
1. **即時記錄**: 對話或操作完成後立即記錄
2. **詳細描述**: 提供足夠的上下文資訊
3. **分類清晰**: 使用適當的類型標籤
4. **保持更新**: 定期更新統計和狀態資訊
5. **版本控制**: 使用 Git 追蹤所有變更

### 安全注意事項 / Security Notes
- ⚠️ 避免記錄敏感資訊（密碼、API 金鑰等）
- ⚠️ 注意個人資料保護
- ⚠️ 定期備份重要記錄
- ⚠️ 控制檔案存取權限

---

## 故障排除 / Troubleshooting

### 問題：JSON 檔案格式錯誤
**解決方案**: 使用 JSON 驗證工具檢查格式
```bash
cat .conversation_state/metadata.json | jq '.'
```

### 問題：檔案遺失
**解決方案**: 從備份恢復或重新初始化
```bash
cp backups/latest/CONVERSATION_LOG.md .
```

### 問題：記錄不完整
**解決方案**: 檢視 Git 歷史紀錄，補充遺漏資訊
```bash
git log --oneline --all
```

---

## 擴展功能 / Extension Features

### 未來可能新增的功能 / Possible Future Additions
- 自動化記錄腳本 / Automated logging scripts
- 網頁界面查看工具 / Web-based viewing tool
- 匯出為其他格式（PDF、HTML）/ Export to other formats
- 整合通知系統 / Integrated notification system
- 搜尋和過濾功能 / Search and filter capabilities

---

## 支援與協助 / Support and Assistance

如有任何問題或建議，請：
For any questions or suggestions, please:

1. 查閱本指南
2. 檢查現有記錄範例
3. 參考 Git 提交歷史
4. 建立 Issue 尋求協助

---

## 版本歷史 / Version History

- **v1.0.0** (2026-01-31): 初始版本，系統重新初始化
  - Initial version, system reinitialization

---

**最後更新 / Last Updated**: 2026-01-31
**維護者 / Maintainer**: GitHub Copilot Agent
**授權 / License**: 本專案使用 / This project uses appropriate license
