# 專案對話與協作追蹤系統 / Project Conversation & Collaboration Tracking System

## 概述 / Overview

本專案使用完整的對話與協作追蹤系統，記錄所有討論、決策和操作，確保專案歷程的完整性與可追溯性。

This project uses a comprehensive conversation and collaboration tracking system to record all discussions, decisions, and operations, ensuring the integrity and traceability of the project history.

---

## 系統狀態 / System Status

- **版本 / Version**: 1.0.0
- **狀態 / Status**: ✅ 已初始化 / Initialized
- **最後更新 / Last Updated**: 2026-01-31

---

## 追蹤系統檔案 / Tracking System Files

### 核心檔案 / Core Files

1. **[CONVERSATION_LOG.md](CONVERSATION_LOG.md)** - 對話記錄
   - 記錄所有專案討論與決策
   - Records all project discussions and decisions

2. **[COLLABORATION_HISTORY.md](COLLABORATION_HISTORY.md)** - 協作歷程
   - 追蹤所有檔案操作與協作活動
   - Tracks all file operations and collaborative activities

3. **[.conversation_state/metadata.json](.conversation_state/metadata.json)** - 系統元資料
   - 儲存系統狀態與統計資訊
   - Stores system status and statistics

4. **[REINITIALIZATION_GUIDE.md](REINITIALIZATION_GUIDE.md)** - 重新初始化指南
   - 完整的系統使用說明
   - Complete system usage instructions

---

## 專案內容 / Project Contents

### 法律文件 / Legal Documents

- **Lawsuit_Invalid_Divorce/** - 婚姻無效訴訟相關文件
  - 扶養費相關對話記錄與文件
  - Maintenance-related conversation records and documents

- **letters/** - 存證信函與刑事告訴狀
  - 各類法律信函與告訴狀範本
  - Various legal letters and complaint templates

---

## 快速開始 / Quick Start

### 記錄新對話 / Record New Conversation
1. 開啟 `CONVERSATION_LOG.md`
2. 按照格式新增對話記錄
3. 提交變更到 Git

### 記錄新操作 / Record New Operation
1. 開啟 `COLLABORATION_HISTORY.md`
2. 新增操作記錄並更新統計
3. 提交變更到 Git

### 查看系統狀態 / View System Status
```bash
cat .conversation_state/metadata.json | jq '.'
```

---

## 使用指南 / Usage Guide

詳細的使用說明請參閱 [REINITIALIZATION_GUIDE.md](REINITIALIZATION_GUIDE.md)

For detailed usage instructions, please refer to [REINITIALIZATION_GUIDE.md](REINITIALIZATION_GUIDE.md)

---

## 注意事項 / Notes

- ⚠️ 所有重要對話與操作都應記錄
- ⚠️ 保護敏感資訊，避免記錄不宜公開的內容
- ⚠️ 定期更新統計資訊
- ⚠️ 保持記錄的即時性與完整性

---

## 維護 / Maintenance

**維護者 / Maintainer**: GitHub Copilot Agent  
**初始化日期 / Initialization Date**: 2026-01-31  
**系統版本 / System Version**: 1.0.0