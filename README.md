# Soc Ops

Social Bingo game for in-person mixers. Find people who match the questions and get 5 in a row!

📚 **[View Lab Guide](workshop/GUIDE.md)**
🚀 **[Start with setup flow](workshop/01-setup.md)** (create your own repo first)

---

## 📚 Lab Guide

| Part | Title |
|------|-------|
| [**00**](workshop/00-overview.md) | Overview & Checklist |
| [**01**](workshop/01-setup.md) | Setup & Context Engineering |
| [**02**](workshop/02-design.md) | Design-First Frontend |
| [**03**](workshop/03-quiz-master.md) | Custom Quiz Master |
| [**04**](workshop/04-multi-agent.md) | Multi-Agent Development |

> 📝 Lab guides are also available in the [`workshop/`](workshop/) folder for offline reading.

---

## Prerequisites

- [Node.js 22](https://nodejs.org/) or higher

## Dev Container / Codespaces

This repo already includes a `.devcontainer/devcontainer.json`.

- **GitHub Codespaces:** create a Codespace from **your own repository** and it will use the devcontainer automatically.
- **VS Code Dev Containers:** clone locally, then run `Dev Containers: Reopen in Container`.
- **GitHub Pages publishing:** deployment is configured for your own repository.

## Run

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

Deploys automatically to GitHub Pages on push to `main`.
