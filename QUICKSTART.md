# 快速开始：Fork openxc/uds-c 仓库

## 最简单的方法 🚀

### 1. 使用 GitHub 网页 (最推荐)

1. 打开浏览器访问：https://github.com/openxc/uds-c
2. 点击右上角的 **Fork** 按钮
3. 选择您的账户
4. 完成！

您的 fork 将位于：`https://github.com/你的用户名/uds-c`

### 2. 使用本仓库的交互式脚本

```bash
./fork_helper.sh
```

按照屏幕提示操作即可。

### 3. 使用 GitHub CLI (如果已安装)

```bash
gh repo fork openxc/uds-c --clone=true
```

## Fork 后做什么？

### 克隆到本地

```bash
git clone https://github.com/你的用户名/uds-c.git
cd uds-c
```

### 设置上游仓库（保持同步）

```bash
git remote add upstream https://github.com/openxc/uds-c.git
git fetch upstream
```

### 同步最新更改

```bash
git fetch upstream
git merge upstream/master
git push origin master
```

## 需要帮助？

- 📖 [完整中文指南](FORK_GUIDE.md)
- 📖 [Complete English Guide](FORK_GUIDE_EN.md)
- 🤖 [交互式脚本](fork_helper.sh)
- 🔗 [GitHub Fork 文档](https://docs.github.com/en/get-started/quickstart/fork-a-repo)

## 关于 openxc/uds-c

这是一个 C 语言实现的 UDS (Unified Diagnostic Services) 协议库，用于汽车诊断通信。

- **仓库**: https://github.com/openxc/uds-c
- **协议**: BSD License
- **语言**: C

---

**提示**: Fork 是 GitHub 的基本功能，非常安全且简单。不用担心会影响原仓库！
