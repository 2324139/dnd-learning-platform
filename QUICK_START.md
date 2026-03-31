# 📖 開發者快速參考

## 項目目錄結構速查

```
dnd-learning-platform/
├── README.md                      ← 👈 從這裡開始
├── CONTRIBUTING.md                ← 貢獻指南
├── docs/                          ← 完整文檔
├── src/                           ← 系統定義 JSON
├── templates/                     ← 劇本範例
├── scripts/                       ← 工具腳本
└── config/                        ← 配置文件
```

## 快速開始（3 步）

### 1️⃣ 克隆項目
```bash
git clone https://github.com/YOUR-USERNAME/dnd-learning-platform.git
cd dnd-learning-platform
```

### 2️⃣ 安裝環境
```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 3️⃣ 開始貢獻
```bash
git checkout -b feature/your-feature
# 做你的改動
git add . && git commit -m "Add: description"
git push origin feature/your-feature
```

## 常用文檔連結

| 需求 | 文檔 |
|------|------|
| 📚 了解世界觀 | [WORLDBUILDING.md](docs/WORLDBUILDING.md) |
| 🎭 學習職業系統 | [CHARACTER_CLASSES.md](docs/CHARACTER_CLASSES.md) |
| 🎲 理解遊戲機制 | [GAME_MECHANICS.md](docs/GAME_MECHANICS.md) |
| 🎯 創建新劇本 | [campaign_template.md](templates/campaign_template.md) |
| 🤝 學習如何貢獻 | [CONTRIBUTING.md](CONTRIBUTING.md) |
| 🎯 查看示例劇本 | [example_campaigns/](templates/example_campaigns/) |

## 常見問題

### Q: 我如何創建新劇本？
A: 使用 `templates/campaign_template.md` 作為模板，然後提交 PR。

### Q: 如何報告 Bug？
A: 在 Issues 中使用 Bug 報告模板。

### Q: 我可以翻譯文檔嗎？
A: 當然可以！我們歡迎各語言翻譯。

### Q: 項目使用什麼許可證？
A: MIT 和 CC-BY-4.0 雙許可證。

## 開發規範速記

### Commit 消息格式
```
Add: 新增功能描述
Fix: 修復 Bug 描述
Refactor: 代碼重構說明
Docs: 文檔更新說明
```

### 代碼風格
```bash
black src/      # 格式化
flake8 src/     # 檢查
pytest tests/   # 測試
```

## 聯繫方式

- 📧 Email: contact@dnd-learning.com
- 💬 Discord: [加入社區](https://discord.gg/example)
- 🐦 Twitter: [@DnDLearning](https://twitter.com/example)

---

準備好開始貢獻了嗎？歡迎加入！ 🎉
