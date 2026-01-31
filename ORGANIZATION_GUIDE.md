# 文件組織指南 (Document Organization Guide)

## 目的 (Purpose)

本指南旨在協助使用者有效地組織和管理個人生活文件，確保重要資料的完整性和易於檢索。

This guide aims to help users effectively organize and manage personal life documents, ensuring the integrity and easy retrieval of important information.

## 資料夾結構建議 (Suggested Folder Structure)

### 現有資料夾 (Existing Folders)

#### 1. Lawsuit_Invalid_Divorce/
訴訟相關文件的存放位置
- 適合存放: 訴狀、答辯狀、證據資料、法院文件
- 命名建議: `文件類型_案件名稱_日期.txt` 或 `.md`

#### 2. letters/
各類信函的存放位置
- 適合存放: 存證信函、刑事告訴狀、民事訴狀、一般信函
- 命名建議: `信函類型_主旨_日期.md`

### 可擴充資料夾 (Expandable Folders)

根據需求，您可以建立以下資料夾:

#### 3. financial/
財務相關文件
- 銀行對帳單
- 投資記錄
- 稅務文件
- 收據和發票

#### 4. medical/
醫療相關文件
- 病歷摘要
- 處方籤記錄
- 醫療收據
- 保險理賠文件

#### 5. education/
教育相關文件
- 學歷證明
- 成績單
- 證書
- 培訓記錄

#### 6. employment/
工作相關文件
- 勞動契約
- 薪資條
- 工作證明
- 離職證明

#### 7. housing/
居住相關文件
- 租賃契約
- 水電瓦斯帳單
- 房屋維修記錄
- 社區公告

#### 8. personal_id/
身份證明文件
- 身分證影本
- 護照影本
- 駕照影本
- 其他證件

## 文件命名規範 (File Naming Conventions)

### 建議格式 (Recommended Format)
```
[類型]_[主題]_[日期YYYYMMDD].[副檔名]
```

### 範例 (Examples)
- `存證信函_房東取消門禁卡_20260125.md`
- `刑事告訴狀_強制罪_房東取消門禁_20260125.md`
- `民事答辯狀_扶養費_20260120.txt`

## 隱私與安全 (Privacy and Security)

### 重要提醒 (Important Reminders)

1. **去識別化處理**: 上傳前移除或遮蔽個人識別資訊
   - 身分證字號
   - 電話號碼
   - 詳細地址
   - 銀行帳號

2. **備份策略**: 定期備份重要文件
   - 本地備份
   - 雲端備份(加密)
   - 實體備份(USB、外接硬碟)

3. **權限管理**: 確保 GitHub repository 設定為私有
   - 避免公開個人敏感資訊
   - 定期檢查存取權限

## 版本控制最佳實務 (Version Control Best Practices)

### Commit 訊息格式 (Commit Message Format)

```
[動作] 簡短描述

例如:
[新增] 存證信函_房東取消門禁卡_20260125
[更新] README 文件組織指南
[刪除] 過期的臨時文件
```

### 分支策略 (Branch Strategy)

- `main`: 穩定的主要分支
- `feature/*`: 新增功能或文件
- `update/*`: 更新現有文件

## 文件審查檢查清單 (Document Review Checklist)

上傳前請確認:

- [ ] 已移除或遮蔽個人敏感資訊
- [ ] 文件命名符合規範
- [ ] 文件存放於正確的資料夾
- [ ] 文件內容完整且可讀
- [ ] 已添加適當的 commit 訊息

## 維護建議 (Maintenance Recommendations)

- 每月審查一次文件完整性
- 每季備份一次所有重要文件
- 年度檢視並清理不再需要的文件
- 持續更新文件組織結構以符合需求

---

最後更新: 2026-01-31
