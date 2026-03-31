# 🎲 D&D 學習平台 - 知識大陸冒險系統

**一個以龍與地下城（D&D）為主題的泛用學習平台**

[![License](https://img.shields.io/badge/License-CC--BY--4.0-blue)](LICENSE)
[![Language](https://img.shields.io/badge/Language-Chinese%20Traditional-green)](README.md)
[![Version](https://img.shields.io/badge/Version-0.1.0--Alpha-orange)](VERSION)

---

## 📋 項目概述

本項目是一個創新的教育遊戲化平台，將學習與 D&D 角色扮演遊戲完美融合：

- 📚 **15+ 個學科領域** - 數學、物理、化學、生物、文學、歷史、哲學等
- 🎭 **7 大職業體系** - 法師、牧師、聖武士、德魯伊、吟遊詩人、知識守護者、賢者
- 🗺️ **完整世界觀** - 知識大陸、七大王國、古神傳說、NPC 故事線
- 🎯 **單人跑團系統** - AI 地下城主、動態難度、多結局劇本
- ⚔️ **進度與榮譽系統** - 等級、技能樹、排行榜、稱號、社團
- 📖 **40+ 劇本模板** - 從簡易初級到進階謎團

---

## 🌟 核心特色

### 1. 知識與冒險的完美融合

```
知識領域    →    D&D 設定
數學        →    法師（魔法系統）
物理        →    牧師（聖域、能量）
化學        →    聖武士（鍊金術）
生物        →    德魯伊（自然、進化）
文學        →    吟遊詩人（故事、詩歌）
歷史        →    知識守護者（時間、記憶）
哲學        →    賢者（真理、思辨）
```

### 2. 沉浸式故事體驗

- 📍 **七大王國** - 每個王國對應一個學科領域
- 👑 **NPC 故事線** - 深度人物發展與互動
- 🔀 **動態分支** - 玩家選擇影響故事走向
- 🎬 **季節大事件** - 全球故事推進

### 3. 單人跑團引擎

- 🤖 **AI 地下城主** - 自動敘述故事、控制 NPC
- 🎲 **虛擬骰子系統** - 透明化的隨機性判定
- 📊 **動態難度調整** - 根據玩家表現實時調整
- 💾 **進度保存系統** - 完整的存檔與讀檔機制

### 4. 社群與協作

- 👥 **社團與公會** - 玩家組建學習小組
- 🤝 **聯盟系統** - 跨學科的協作項目
- 📈 **多維排行榜** - 等級、經驗、教學貢獻等
- 🎓 **導師機制** - 資深玩家指導新人

---

## 📂 項目結構

```
dnd-learning-platform/
├── README.md                          # 本文件
├── VERSION                            # 版本信息
├── LICENSE                            # 開源許可證
│
├── docs/                              # 文檔目錄
│   ├── WORLDBUILDING.md               # 世界觀設定
│   ├── GAME_MECHANICS.md              # 遊戲機制
│   ├── CAMPAIGN_SYSTEM.md             # 單人跑團系統
│   ├── CHARACTER_CLASSES.md           # 職業系統
│   ├── NPC_GUIDE.md                   # NPC 與故事線
│   ├── PROGRESSION_SYSTEM.md          # 進度系統
│   ├── COMMUNITY_SYSTEM.md            # 社群系統
│   ├── LEADERBOARD.md                 # 排行榜系統
│   ├── DESIGN_PHILOSOPHY.md           # 設計哲學
│   └── IMPLEMENTATION_GUIDE.md        # 實現指南
│
├── src/                               # 源代碼/系統設計
│   ├── core/
│   │   ├── attributes.json            # 屬性系統定義
│   │   ├── skills.json                # 技能系統定義
│   │   └── mechanics.json             # 遊戲機制參數
│   │
│   ├── world/
│   │   ├── kingdoms.json              # 七大王國設定
│   │   ├── npcs.json                  # NPC 資料庫
│   │   ├── locations.json             # 地點設定
│   │   └── factions.json              # 勢力設定
│   │
│   ├── progression/
│   │   ├── levels.json                # 等級系統
│   │   ├── skills_tree.json           # 技能樹
│   │   ├── achievements.json          # 成就系統
│   │   └── titles.json                # 稱號系統
│   │
│   ├── campaigns/
│   │   ├── campaign_engine.json       # 跑團引擎參數
│   │   ├── difficulty.json            # 難度調整系統
│   │   └── dice_system.json           # 骰子系統
│   │
│   └── community/
│       ├── guilds.json                # 社團系統
│       ├── leaderboards.json          # 排行榜配置
│       └── reputation.json            # 名聲系統
│
├── config/                            # 配置文件
│   ├── database_schema.sql            # 數據庫架構
│   ├── api_endpoints.json             # API 端點定義
│   └── feature_flags.json             # 功能開關
│
├── templates/                         # 劇本與模板
│   ├── campaign_template.md           # 劇本設計模板
│   ├── npc_template.md                # NPC 模板
│   ├── scene_template.md              # 場景模板
│   │
│   ├── example_campaigns/             # 示例劇本
│   │   ├── beginner/
│   │   │   ├── 01_lost_scroll.md
│   │   │   ├── 02_mysterious_artifact.md
│   │   │   └── 03_village_mystery.md
│   │   │
│   │   ├── intermediate/
│   │   │   ├── 04_entropy_wind.md
│   │   │   ├── 05_knowledge_conspiracy.md
│   │   │   └── 06_time_distortion.md
│   │   │
│   │   └── advanced/
│   │       ├── 07_lost_era_mystery.md
│   │       ├── 08_knowledge_crisis.md
│   │       └── 09_ultimate_trial.md
│   │
│   └── curriculum/                    # 課程與卷軸
│       ├── mathematics/
│       │   ├── l1_arithmetic.md
│       │   ├── l2_algebra.md
│       │   └── ...
│       ├── physics/
│       ├── chemistry/
│       ├── biology/
│       ├── literature/
│       ├── history/
│       └── philosophy/
│
├── scripts/                           # 工具腳本
│   ├── generate_campaign.py           # 劇本生成器
│   ├── balance_checker.py             # 平衡檢查工具
│   ├── npc_generator.py               # NPC 生成器
│   └── export_content.py              # 內容匯出工具
│
└── .github/                           # GitHub 配置
    ├── workflows/
    │   ├── build.yml                  # 構建工作流
    │   ├── validate.yml               # 驗證工作流
    │   └── deploy.yml                 # 部署工作流
    │
    └── ISSUE_TEMPLATE/
        ├── bug_report.md
        ├── feature_request.md
        └── campaign_submission.md
```

---

## 🚀 快速開始

### 前置要求

- Python 3.8+
- Node.js 16+ （如需構建 Web 版）
- PostgreSQL 13+ （如需完整數據庫）
- Git

### 安裝與設置

```bash
# 1. 克隆倉庫
git clone https://github.com/YOUR-USERNAME/dnd-learning-platform.git
cd dnd-learning-platform

# 2. 安裝依賴
pip install -r requirements.txt
npm install                    # 如需 Web 前端

# 3. 初始化配置
cp config/example.env config/.env
# 編輯 config/.env 設置你的配置

# 4. 構建項目
python scripts/build.py

# 5. 啟動系統
python src/main.py
```

### 創建第一個劇本

```bash
# 使用劇本生成器
python scripts/generate_campaign.py \
  --name "my_first_campaign" \
  --level 1-5 \
  --type adventure \
  --subjects math physics
```

---

## 📚 文檔導航

| 文檔 | 內容 |
|------|------|
| [世界觀設定](docs/WORLDBUILDING.md) | 知識大陸、七大王國、NPC 故事 |
| [遊戲機制](docs/GAME_MECHANICS.md) | 屬性、技能、戰鬥、魔法系統 |
| [單人跑團](docs/CAMPAIGN_SYSTEM.md) | 劇本引擎、AI DM、故事分支 |
| [職業系統](docs/CHARACTER_CLASSES.md) | 7 大職業、技能樹、轉職 |
| [進度系統](docs/PROGRESSION_SYSTEM.md) | 等級、經驗、能力點數 |
| [社群系統](docs/COMMUNITY_SYSTEM.md) | 社團、聯盟、公會 |
| [排行榜](docs/LEADERBOARD.md) | 多維排行、名聲、成就 |

---

## 🎮 遊戲特色系統

### 屬性系統
```
STR (力量)   ← 物理攻擊、負重
DEX (敏捷)   ← 防禦、精準、速度
CON (體質)   ← 生命值、耐力
INT (智慧)   ← 知識、邏輯、記憶
WIS (感知)   ← 察覺、直覺、洞察
CHA (魅力)   ← 說服、表演、領導
```

### 職業系統

| 職業 | 學科 | 特色 |
|------|------|------|
| 🧙‍♂️ 法師 | 數學 | 魔法系統、法術卷軸 |
| ⛪ 牧師 | 物理 | 聖域、能量轉換 |
| ⚔️ 聖武士 | 化學 | 鍊金術、元素控制 |
| 🌳 德魯伊 | 生物 | 自然變身、進化 |
| 🎭 吟遊詩人 | 文學 | 故事、靈感、表演 |
| 📖 知識守護者 | 歷史 | 時間、記憶、編年 |
| 🧠 賢者 | 哲學 | 思辨、真理、智慧 |

### 進度系統

- **等級**：L1 - L100
- **經驗值**：基於習題難度與完成質量
- **技能點數**：每升 1 級獲得 1 點
- **天賦點數**：每升 5 級獲得 1 點
- **特化點數**：每升 10 級獲得 1 點

---

## 🎯 使用案例

### 場景 1：獨自探險

```
玩家開啟「失落計算卷軸」劇本 → 進入數學王國
解答習題 → 擊敗敵人 → 獲得經驗與物品
完成故事 → 解鎖新卷軸與技能
```

### 場景 2：小組合作

```
5 位玩家創建「知識聯盟」社團
協作完成「跨學科項目」任務
獲得社團經驗與特殊獎勵
社團升級，解鎖新功能
```

### 場景 3：教學應用

```
教師使用「課程模板」創建教學劇本
學生以遊戲形式學習知識
系統自動追蹤進度與成績
生成個性化學習報告
```

---

## 🛠️ 技術棧

### 後端
- Python / Node.js
- PostgreSQL / MongoDB
- Redis（緩存）
- GraphQL API

### 前端
- React / Vue 3
- Three.js（3D 場景）
- WebSocket（實時通信）

### 部署
- Docker / Kubernetes
- GitHub Actions
- AWS / Google Cloud

---

## 📊 項目統計

- 📄 **文檔頁數**：60+ 頁
- 🎭 **設計職業**：7 個
- 📚 **設計學科**：15+ 個
- 🎯 **劇本模板**：40+ 個
- 👥 **NPC 角色**：50+ 個
- 🏆 **成就系統**：180+ 個成就

---

## 🤝 貢獻指南

我們歡迎各種形式的貢獻！

### 如何貢獻

1. **Fork 本倉庫**
2. **創建特性分支** (`git checkout -b feature/amazing-feature`)
3. **提交更改** (`git commit -m 'Add amazing feature'`)
4. **推送到分支** (`git push origin feature/amazing-feature`)
5. **打開 Pull Request**

### 貢獻類型

- 🐛 **Bug 報告** - [提交 Bug](../../issues/new?template=bug_report.md)
- ✨ **新功能** - [提交建議](../../issues/new?template=feature_request.md)
- 📖 **文檔改進** - 直接編輯 `docs/` 文件夾
- 🎭 **劇本投稿** - [提交劇本](../../issues/new?template=campaign_submission.md)
- 🎨 **藝術創意** - 新的 UI 設計、圖片、音樂

### 代碼規範

```python
# 使用 PEP 8 規範
# 添加類型提示
# 編寫單元測試
# 更新文檔
```

---

## 📋 路線圖

### Phase 1（已完成）✅
- ✅ 世界觀設定與 NPC 故事
- ✅ 遊戲機制設計
- ✅ 劇本系統框架
- ✅ 文檔編寫

### Phase 2（進行中）🔄
- 🔄 單人跑團引擎實現
- 🔄 Web 前端開發
- 🔄 數據庫架構

### Phase 3（計劃中）📅
- 📅 多人協作系統
- 📅 教師管理面板
- 📅 行動應用程序
- 📅 VR 沉浸體驗

### Phase 4（願景）🌟
- 🌟 AI 劇本生成
- 🌟 實時對戰系統
- 🌟 全球排行賽
- 🌟 教育機構集成

---

## 📞 聯繫方式

- 📧 **Email**: contact@dnd-learning.com
- 💬 **Discord**: [加入我們的社區](https://discord.gg/example)
- 🐦 **Twitter**: [@DnDLearning](https://twitter.com/example)
- 📱 **微信**: dnd_learning_official

---

## 📜 許可證

本項目採用 **Creative Commons Attribution 4.0 International License**

詳見 [LICENSE](LICENSE) 文件

### 簡要說明
- ✅ 可自由使用、修改、分發
- ✅ 需標註原作者
- ✅ 可用於商業目的
- ⚠️ 不提供任何保證

---

## 🙏 致謝

感謝所有貢獻者、測試者和社區成員！

特別感謝：
- D&D 官方與創意社區的靈感
- 教育工作者的反饋與建議
- 開源社區的技術支持

---

## 📖 其他資源

- 📚 [D&D 官方文檔](https://dnd.wizards.com/)
- 🎮 [遊戲化教育研究](https://scholar.google.com/scholar?q=gamification+education)
- 🎓 [Bloom 教學分類](https://en.wikipedia.org/wiki/Bloom%27s_taxonomy)
- 🌐 [開源教育資源](https://www.oer.org/)

---

## ⭐ 給我們一個 Star！

如果你喜歡這個項目，請給我們一個 ⭐ Star！

這能幫助我們了解有多少人對此感興趣，並激勵我們繼續開發。

---

<div align="center">

**用知識改變世界。**

Made with ❤️ for Learners & Adventurers

© 2025 D&D Learning Platform. All rights reserved.

</div>
