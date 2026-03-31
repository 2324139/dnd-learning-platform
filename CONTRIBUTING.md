# 貢獻指南

感謝你有興趣為 D&D 學習平台貢獻力量！

本文檔提供了如何以最有效的方式參與項目的指引。

---

## 📋 行為準則

本項目遵循 [Contributor Covenant](https://www.contributor-covenant.org/) 行為準則。

參與本項目的所有人應該：
- 尊重他人，接納不同觀點
- 建設性地提供反饋
- 關注於對項目最有益的事
- 在衝突時尋求協助

---

## 🐛 報告 Bug

### 在提交 Bug 報告之前

- 檢查 [Issues](../../issues) 列表，確認 Bug 尚未被報告
- 收集盡可能多的信息

### 提交 Bug 報告

1. 使用 [Bug 報告模板](../../issues/new?template=bug_report.md)
2. 提供清晰的描述
3. 提供重現步驟
4. 說明預期行為和實際行為
5. 包含屏幕截圖或日誌（如適用）

---

## 💡 建議新功能

1. 使用 [功能請求模板](../../issues/new?template=feature_request.md)
2. 清楚地描述問題和解決方案
3. 提供示例或模擬
4. 解釋為什麼此功能有用

---

## 📖 提交文檔改進

1. Fork 倉庫
2. 編輯相關的 Markdown 文件
3. 提交 Pull Request
4. 我們會檢查並合併

---

## 🎭 投稿劇本

我們非常歡迎新劇本投稿！

### 劇本投稿要求

1. 使用 [劇本投稿模板](templates/campaign_template.md)
2. 包括以下部分：
   - 劇本基本信息（名稱、等級、時長、難度）
   - 故事大綱
   - NPC 與敵人描述
   - 至少 3 個場景
   - 謎題或戰鬥設計
   - 獎勵設定
   - 教育目標

3. 測試你的劇本
4. 提交 Pull Request

### 優秀劇本標準

✅ 故事邏輯一致
✅ 難度平衡適當
✅ 教育目標清晰
✅ 提供多個選擇路徑
✅ 環境描寫生動
✅ NPC 對話自然

---

## 🔧 代碼貢獻

### 開發環境設置

```bash
# 克隆倉庫
git clone https://github.com/YOUR-USERNAME/dnd-learning-platform.git
cd dnd-learning-platform

# 創建虛擬環境
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 安裝依賴
pip install -r requirements.txt

# 安裝開發工具
pip install black flake8 pytest
```

### 代碼風格

我們遵循 [PEP 8](https://pep8.org/) 標準。

```bash
# 格式化代碼
black src/

# 檢查風格
flake8 src/

# 運行測試
pytest tests/
```

### 提交 Pull Request

1. 從 `main` 分支創建特性分支
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. 進行更改並提交
   ```bash
   git add .
   git commit -m "Add: your descriptive commit message"
   ```

3. 推送到你的 Fork
   ```bash
   git push origin feature/your-feature-name
   ```

4. 在 GitHub 上打開 Pull Request

5. 等待審查和反饋

### Commit 消息格式

使用以下格式編寫 Commit 消息：

```
Type: Brief description

Longer explanation if necessary.

- Bullet point 1
- Bullet point 2

Fixes #123
```

**Type 選項：**
- `Add`: 新增功能
- `Fix`: 修復 Bug
- `Refactor`: 代碼重構
- `Docs`: 文檔更新
- `Test`: 測試相關
- `Style`: 格式化

### PR 檢查清單

在提交 PR 前，確保：

- [ ] 代碼通過 `black` 和 `flake8` 檢查
- [ ] 所有測試通過
- [ ] 添加了新測試（如適用）
- [ ] 更新了相關文檔
- [ ] Commit 消息清晰描述性
- [ ] 沒有未解決的衝突

---

## 📚 文檔貢獻

### 改進文檔

1. 修復拼寫和語法錯誤
2. 澄清不清楚的說明
3. 添加缺失的信息
4. 改進組織結構

### 翻譯文檔

我們歡迎其他語言的翻譯！

1. 在 `docs/i18n/` 創建新的語言文件夾
2. 翻譯相關文檔
3. 提交 Pull Request

---

## 🎨 設計與創意貢獻

### UI/UX 改進

- 新的界面設計
- 改進的用戶體驗
- 圖標和圖像設計

### 內容創意

- 新的 NPC 角色設定
- 世界觀擴展
- 美術概念

### 音樂與音效

- 原創背景音樂
- 音效設計

提交這些內容時，請清楚地描述：
- 文件格式
- 使用許可證
- 預期用途

---

## ✅ 審查流程

### PR 審查

1. 至少一位維護者審查
2. 檢查代碼質量
3. 驗證測試通過
4. 確保文檔更新
5. 檢查與項目哲學的一致性

### 審查期間

- 對反饋保持開放態度
- 回答問題
- 進行必要的修改
- 遵循項目指南

### 合併

一旦批准，PR 將被合併。感謝你的貢獻！

---

## 💬 社區交流

### 討論平台

- GitHub Discussions - 一般討論
- Issues - 報告和跟蹤
- Discord - 即時聊天

### 行為

保持討論：
- ✅ 尊重和建設性
- ✅ 關注於項目
- ✅ 歡迎新手
- ❌ 避免個人攻擊
- ❌ 禁止垃圾信息

---

## 🏆 貢獻者認可

我們在以下位置認可所有貢獻者：

- README.md 的貢獻者列表
- GitHub 的自動貢獻者圖表
- 年度貢獻者名單

---

## 📞 需要幫助？

- 📚 查看 [文檔](docs/)
- 💬 加入 [Discord 社區](https://discord.gg/example)
- 📧 聯繫維護者
- 🎓 查看現有的 Issues 和 PRs

---

## 📄 許可證

通過貢獻此項目，你同意你的貢獻將在 MIT 和 CC-BY-4.0 許可證下獲得許可。

---

感謝你對 D&D 學習平台的支持和貢獻！🎉

