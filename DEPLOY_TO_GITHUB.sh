#!/bin/bash

# 🚀 D&D Learning Platform - GitHub 部署腳本
# 使用此腳本將項目一鍵推送至 GitHub

set -e  # 任何錯誤則退出

echo "=========================================="
echo "  D&D 學習平台 - GitHub 部署工具"
echo "=========================================="
echo ""

# 檢查必要的工具
check_requirements() {
    echo "📋 檢查系統要求..."
    
    if ! command -v git &> /dev/null; then
        echo "❌ 錯誤：未安裝 Git"
        exit 1
    fi
    
    echo "✅ Git 已安裝"
}

# 獲取用戶信息
get_user_info() {
    echo ""
    echo "📝 請輸入你的 GitHub 信息"
    echo ""
    
    read -p "GitHub 用戶名: " GITHUB_USERNAME
    if [ -z "$GITHUB_USERNAME" ]; then
        echo "❌ 用戶名不能為空"
        exit 1
    fi
    
    read -sp "GitHub Token (粘貼後按Enter，輸入不可見): " GITHUB_TOKEN
    echo ""
    
    if [ -z "$GITHUB_TOKEN" ]; then
        echo "❌ Token 不能為空"
        exit 1
    fi
    
    REPO_NAME="dnd-learning-platform"
    
    echo ""
    echo "📊 確認信息："
    echo "  用戶名：$GITHUB_USERNAME"
    echo "  倉庫名：$REPO_NAME"
    echo "  Token：${GITHUB_TOKEN:0:10}..."
    echo ""
    
    read -p "信息正確嗎？(y/n): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ 已取消"
        exit 1
    fi
}

# 配置 Git 憑證
setup_credentials() {
    echo ""
    echo "🔐 配置 Git 憑證..."
    
    # 配置全局憑證助手
    git config --global credential.helper store
    
    # 保存憑證
    echo "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials
    chmod 600 ~/.git-credentials
    
    echo "✅ Git 憑證已配置"
}

# 配置本地 Git
setup_local_git() {
    echo ""
    echo "⚙️ 配置本地 Git..."
    
    cd /home/container/dnd-learning-platform
    
    # 重命名分支
    git branch -M main
    echo "✅ 分支已重命名為 main"
    
    # 移除舊的遠程設置（如果存在）
    git remote remove origin 2>/dev/null || true
    
    # 添加新的遠程倉庫
    git remote add origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git
    echo "✅ 遠程倉庫已添加"
}

# 推送至 GitHub
push_to_github() {
    echo ""
    echo "🚀 推送至 GitHub..."
    echo ""
    
    git push -u origin main
    
    echo ""
    echo "✅ 推送成功！"
}

# 顯示完成信息
show_completion() {
    echo ""
    echo "=========================================="
    echo "  ✅ 部署完成！"
    echo "=========================================="
    echo ""
    echo "📍 倉庫地址："
    echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo ""
    echo "📋 後續步驟："
    echo "   1. 訪問倉庫地址查看項目"
    echo "   2. 在 GitHub 上配置倉庫設置"
    echo "   3. 邀請貢獻者加入"
    echo "   4. 開始接收 PR 和 Issue"
    echo ""
    echo "📖 更多信息："
    echo "   - CONTRIBUTING.md - 貢獻指南"
    echo "   - QUICK_START.md - 快速開始"
    echo "   - GITHUB_SETUP.md - GitHub 詳細設置"
    echo ""
    echo "🎉 祝你的項目順利開展！"
    echo ""
}

# 主函數
main() {
    check_requirements
    get_user_info
    setup_credentials
    setup_local_git
    push_to_github
    show_completion
}

# 運行主函數
main
