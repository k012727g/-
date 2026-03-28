#!/bin/bash

# Fork Helper Script for openxc/uds-c Repository
# This script helps you fork and set up the openxc/uds-c repository

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Repository information
ORIGINAL_REPO="openxc/uds-c"
ORIGINAL_URL="https://github.com/openxc/uds-c.git"

echo -e "${BLUE}======================================${NC}"
echo -e "${BLUE}OpenXC UDS-C Fork Helper Script${NC}"
echo -e "${BLUE}======================================${NC}"
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to display menu
display_menu() {
    echo -e "${YELLOW}请选择 Fork 方法 / Please select fork method:${NC}"
    echo "1) 使用 GitHub CLI (gh) / Use GitHub CLI"
    echo "2) 显示手动 Fork 步骤 / Show manual fork instructions"
    echo "3) 显示 API Fork 示例 / Show API fork example"
    echo "4) 仅克隆原始仓库 / Just clone original repository"
    echo "5) 退出 / Exit"
    echo ""
}

# Method 1: GitHub CLI
fork_with_gh() {
    echo -e "${BLUE}使用 GitHub CLI Fork / Using GitHub CLI to Fork${NC}"
    echo ""
    
    if ! command_exists gh; then
        echo -e "${RED}错误: 未找到 GitHub CLI (gh)${NC}"
        echo -e "${RED}Error: GitHub CLI (gh) not found${NC}"
        echo ""
        echo "请安装 GitHub CLI: https://cli.github.com/"
        echo "Please install GitHub CLI: https://cli.github.com/"
        return 1
    fi
    
    echo "检查 GitHub CLI 认证状态..."
    echo "Checking GitHub CLI authentication status..."
    if ! gh auth status >/dev/null 2>&1; then
        echo -e "${YELLOW}需要登录 GitHub CLI / Need to login to GitHub CLI${NC}"
        gh auth login
    fi
    
    echo ""
    echo "正在 Fork 仓库... / Forking repository..."
    
    read -p "是否同时克隆到本地? (y/n) / Clone locally too? (y/n): " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        gh repo fork "$ORIGINAL_REPO" --clone=true
        cd uds-c 2>/dev/null || true
        echo ""
        echo -e "${GREEN}✓ Fork 完成并已克隆到本地 'uds-c' 目录${NC}"
        echo -e "${GREEN}✓ Fork completed and cloned to local 'uds-c' directory${NC}"
    else
        gh repo fork "$ORIGINAL_REPO" --clone=false
        echo ""
        echo -e "${GREEN}✓ Fork 完成${NC}"
        echo -e "${GREEN}✓ Fork completed${NC}"
    fi
    
    echo ""
    echo "查看您的 Fork: / View your fork:"
    echo "https://github.com/$(gh api user -q .login)/uds-c"
}

# Method 2: Manual instructions
show_manual_instructions() {
    echo -e "${BLUE}手动 Fork 步骤 / Manual Fork Instructions:${NC}"
    echo ""
    echo "1. 访问 / Visit: $ORIGINAL_URL"
    echo "2. 点击页面右上角的 'Fork' 按钮"
    echo "   Click the 'Fork' button in the top-right corner"
    echo "3. 选择您的账户"
    echo "   Select your account"
    echo "4. 等待 Fork 完成"
    echo "   Wait for fork to complete"
    echo ""
    echo -e "${GREEN}完成后，您的 Fork 将位于:${NC}"
    echo -e "${GREEN}After completion, your fork will be at:${NC}"
    echo "https://github.com/YOUR_USERNAME/uds-c"
    echo ""
    read -p "按任意键继续... / Press any key to continue..." -n1 -s
    echo ""
}

# Method 3: API example
show_api_example() {
    echo -e "${BLUE}使用 GitHub API Fork / Using GitHub API to Fork${NC}"
    echo ""
    echo "您需要一个个人访问令牌 (PAT)"
    echo "You need a Personal Access Token (PAT)"
    echo "获取: https://github.com/settings/tokens"
    echo ""
    echo "使用以下命令 Fork: / Use this command to fork:"
    echo ""
    echo -e "${YELLOW}curl -X POST \\${NC}"
    echo -e "${YELLOW}  -H \"Accept: application/vnd.github.v3+json\" \\${NC}"
    echo -e "${YELLOW}  -H \"Authorization: token YOUR_TOKEN\" \\${NC}"
    echo -e "${YELLOW}  https://api.github.com/repos/${ORIGINAL_REPO}/forks${NC}"
    echo ""
    read -p "按任意键继续... / Press any key to continue..." -n1 -s
    echo ""
}

# Method 4: Clone original
clone_original() {
    echo -e "${BLUE}克隆原始仓库 / Cloning original repository${NC}"
    echo ""
    
    if [ -d "uds-c" ]; then
        echo -e "${YELLOW}警告: 'uds-c' 目录已存在${NC}"
        echo -e "${YELLOW}Warning: 'uds-c' directory already exists${NC}"
        read -p "是否删除并重新克隆? (y/n) / Delete and re-clone? (y/n): " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            rm -rf uds-c
        else
            return 1
        fi
    fi
    
    echo "正在克隆... / Cloning..."
    git clone "$ORIGINAL_URL"
    cd uds-c
    
    echo ""
    echo -e "${GREEN}✓ 克隆完成 / Clone completed${NC}"
    echo ""
    echo "目录: $(pwd)"
    echo "Directory: $(pwd)"
    echo ""
    echo "注意: 这不是 Fork，而是原始仓库的克隆"
    echo "Note: This is not a fork, but a clone of the original repository"
    echo "您无法直接推送更改到此仓库"
    echo "You cannot push changes directly to this repository"
}

# Main menu loop
while true; do
    display_menu
    read -p "请选择 (1-5) / Select option (1-5): " choice
    echo ""
    
    case $choice in
        1)
            fork_with_gh
            echo ""
            read -p "按任意键继续... / Press any key to continue..." -n1 -s
            echo ""
            ;;
        2)
            show_manual_instructions
            ;;
        3)
            show_api_example
            ;;
        4)
            clone_original
            echo ""
            read -p "按任意键继续... / Press any key to continue..." -n1 -s
            echo ""
            ;;
        5)
            echo "退出 / Exiting..."
            exit 0
            ;;
        *)
            echo -e "${RED}无效选择 / Invalid option${NC}"
            echo ""
            ;;
    esac
done
