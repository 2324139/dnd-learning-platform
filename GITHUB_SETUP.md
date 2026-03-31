# 🚀 推送到 GitHub - 完整指南

親愛的開發者，

已完成的 D&D 學習平台本地倉庫現已準備推送至 GitHub！

## 📋 當前狀態

✅ **本地倉庫已初始化**
- 分支：master
- 首次提交：完成
- 文件數：9
- 大小：~100KB

## 🔧 推送步驟

### 第 1 步：準備 GitHub 設置

如果你尚未擁有 GitHub Token：

1. 訪問：https://github.com/settings/tokens
2. 點擊「Generate new token (classic)」
3. 設置詳情：
   - **Note**: D&D Learning Platform
   - **Expiration**: 30 days（或更長）
   - **Scopes**: ✅ repo, ✅ workflow
4. 複製 Token（⚠️ 僅顯示一次）

### 第 2 步：設置本地 Git 憑證

**方式 A：交互式設置（推薦）**
```bash
git config --global credential.helper store
# 運行後推送時會要求輸入
# Username: YOUR-GITHUB-USERNAME
# Password: ghp_xxxxxxxxxxxx (粘貼 Token)
```

**方式 B：直接設置**
```bash
echo "https://YOUR-USERNAME:ghp_xxxxxxxxxxxx@github.com" > ~/.git-credentials
chmod 600 ~/.git-credentials
```

### 第 3 步：創建 GitHub 倉庫

選項 A：通過網頁
1. 訪問 https://github.com/new
2. **Repository name**: `dnd-learning-platform`
3. **Description**: D&D-themed Learning Platform
4. **Visibility**: Public（歡迎社區貢獻）
5. ⚠️ **不要** 初始化 README / .gitignore / LICENSE
6. 點擊「Create repository」

選項 B：使用 GitHub CLI
```bash
gh repo create dnd-learning-platform \
  --public \
  --description "D&D-themed Learning Platform" \
  --source=dnd-learning-platform \
  --remote=origin
```

### 第 4 步：添加遠程倉庫並推送

```bash
cd /home/container/dnd-learning-platform

# 添加 GitHub 遠程倉庫
git remote add origin https://github.com/YOUR-USERNAME/dnd-learning-platform.git

# 重命名分支為 main（可選但推薦）
git branch -M main

# 推送至 GitHub
git push -u origin main
```

### 第 5 步：驗證推送成功

```bash
# 查看遠程狀態
git remote -v
# 應該顯示：
# origin  https://github.com/YOUR-USERNAME/dnd-learning-platform.git (fetch)
# origin  https://github.com/YOUR-USERNAME/dnd-learning-platform.git (push)

# 驗證分支
git branch -a
# 應該顯示：
# * main
#   remotes/origin/main
```

---

## 📦 完整推送腳本（一鍵執行）

```bash
#!/bin/bash

# 設置變量
GITHUB_USERNAME="YOUR-USERNAME"
GITHUB_TOKEN="ghp_xxxxxxxxxxxx"
REPO_NAME="dnd-learning-platform"

# 進入項目目錄
cd /home/container/$REPO_NAME

# 配置 Git 憑證
git config --global credential.helper store
echo "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials
chmod 600 ~/.git-credentials

# 重命名分支
git branch -M main

# 添加遠程倉庫
git remote add origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git

# 推送至 GitHub
echo "推送中..."
git push -u origin main

echo "✅ 推送完成！"
echo "訪問你的倉庫: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
```

保存為 `push_to_github.sh` 並運行：
```bash
chmod +x push_to_github.sh
./push_to_github.sh
```

---

## 🛡️ 安全提示

⚠️ **永遠不要**：
- 在代碼中提交 Token
- 在公開聊天中分享 Token
- 將 Token 保存在版本控制中

✅ **應該做**：
- 使用 `~/.git-credentials` 存儲 Token（權限 600）
- 定期更換 Token
- 設置 Token 過期時間
- 使用環境變量（在 CI/CD 中）

---

## 📊 推送後的下一步

### 1. 驗證倉庫
- [ ] 訪問 GitHub 上的倉庫
- [ ] 確認所有文件已推送
- [ ] 檢查 README 顯示正確
- [ ] 驗證 License 顯示

### 2. 配置 GitHub 設置
```bash
# 設置主分支為 main
# GitHub → Settings → Branches → Default branch = main

# 啟用問題跟蹤
# GitHub → Settings → Features → Issues ✅

# 啟用討論
# GitHub → Settings → Features → Discussions ✅

# 配置 Wiki（可選）
# GitHub → Settings → Features → Wiki ✅
```

### 3. 創建 Issue 標籤

在 GitHub 上創建以下標籤（用於組織 Issue）：

```
bug          (紅色) - Bug 報告
enhancement  (藍色) - 新功能
documentation (綠色) - 文檔
question     (黃色) - 問題
campaign     (紫色) - 劇本投稿
good-first-issue (淺綠) - 新手友善
```

### 4. 邀請貢獻者

在 README 中宣布項目上線，邀請貢獻者！

---

## 🔄 日後的工作流

### 本地開發
```bash
git checkout -b feature/new-feature
# 做你的改動
git add .
git commit -m "Add: feature description"
git push origin feature/new-feature
```

### 同步遠程更新
```bash
git fetch origin
git merge origin/main
# 或使用 rebase
git rebase origin/main
```

---

## ⚠️ 常見問題

### Q: 推送失敗「fatal: 'origin' does not appear to be a 'git' repository」

**解決方案**：
```bash
git remote rm origin
git remote add origin https://github.com/YOUR-USERNAME/dnd-learning-platform.git
git push -u origin main
```

### Q: 推送失敗「Repository not found」

**可能原因**：
- ❌ 倉庫尚未在 GitHub 上創建
- ❌ Token 無效或過期
- ❌ 用戶名或倉庫名拼寫錯誤

**解決方案**：
1. 確認倉庫已在 GitHub 上創建
2. 生成新的 Token
3. 檢查 URL 拼寫

### Q: 推送失敗「fatal: Authentication failed」

**解決方案**：
```bash
# 清除舊的憑證
git credential reject https://github.com

# 重新設置
git config --global credential.helper store
# 下次推送時會要求輸入新的憑證
```

---

## 📞 需要幫助？

- 📧 Email: contact@dnd-learning.com
- 💬 Discord: [加入社區](https://discord.gg/example)
- 📖 GitHub 文檔: https://docs.github.com

---

## ✅ 推送完成檢查清單

- [ ] GitHub Token 已生成和保存
- [ ] 本地 Git 配置完成
- [ ] GitHub 倉庫已創建
- [ ] 遠程倉庫已添加
- [ ] 代碼已推送至 main 分支
- [ ] 所有文件在 GitHub 上可見
- [ ] 倉庫設置已配置
- [ ] 標籤已創建
- [ ] CONTRIBUTING.md 在倉庫上可見
- [ ] README.md 在主頁正確顯示

---

## 🎉 恭喜！

你的 D&D 學習平台已上線至 GitHub！

現在開始接受全球貢獻者的參與！

---

最後更新：2025-03-27
