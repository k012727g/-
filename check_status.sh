#!/bin/bash

# Git Status Check Script for k012727g/- Repository
# This script displays comprehensive git status information

echo "=========================================="
echo "Git Status Report - k012727g/- Repository"
echo "=========================================="
echo ""

# Show current branch
echo "📍 Current Branch:"
git branch --show-current
echo ""

# Show branch tracking information
echo "🔗 Branch Tracking:"
git status -sb
echo ""

# Show detailed status
echo "📊 Detailed Status:"
git status
echo ""

# Show recent commits
echo "📝 Recent Commits (last 5):"
git log --oneline -5
echo ""

# Show all branches
echo "🌿 All Branches:"
git branch -a
echo ""

# Show untracked files specifically
echo "📂 File Status:"
if [ -n "$(git status --porcelain)" ]; then
    echo "Changes detected:"
    git status --porcelain
else
    echo "✅ Working tree is clean - no changes detected"
fi
echo ""

# Show staged files
echo "📦 Staged Files (ready to commit):"
if [ -n "$(git diff --cached --name-only)" ]; then
    git diff --cached --name-only
else
    echo "No files staged for commit"
fi
echo ""

# Show modified files
echo "✏️ Modified Files (not staged):"
if [ -n "$(git diff --name-only)" ]; then
    git diff --name-only
else
    echo "No modified files"
fi
echo ""

# Show untracked files
echo "❓ Untracked Files:"
if [ -n "$(git ls-files --others --exclude-standard)" ]; then
    git ls-files --others --exclude-standard
else
    echo "No untracked files"
fi
echo ""

echo "=========================================="
echo "Status check complete!"
echo "=========================================="
