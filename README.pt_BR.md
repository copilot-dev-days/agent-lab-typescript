<!-- l10n-sync: source-file="README.md" -->
# Bingo Mixer

Bingo Mixer é um jogo de bingo social para encontros presenciais. Encontre pessoas que correspondam às perguntas e consiga 5 em linha!

📚 **[Ver Guia do Lab](workshop/pt_BR/GUIDE.md)**
🚀 **[Comece pela configuração](workshop/pt_BR/01-setup.md)**

---

## 📚 Guia do Lab

| Parte | Título |
|-------|--------|
| [**00**](workshop/pt_BR/00-overview.md) | Visão Geral & Lista Rápida |
| [**01**](workshop/pt_BR/01-setup.md) | Configuração & Engenharia de Contexto |
| [**02**](workshop/pt_BR/02-design.md) | Frontend Design-First |
| [**03**](workshop/pt_BR/03-quiz-master.md) | Quiz Master Personalizado |
| [**04**](workshop/pt_BR/04-multi-agent.md) | Desenvolvimento Multi-Agente |
| [**05**](workshop/pt_BR/05-complete.md) | Conclusão e Próximos Passos |

> 📝 Os guias do lab também estão disponíveis na pasta [`workshop/pt_BR/`](workshop/pt_BR/) para leitura offline.

---

## Pré-requisitos

- VS Code **1.135 ou posterior** com GitHub Copilot; use uma sessão de chat **Local** para o lab
- [Node.js 22](https://nodejs.org/) ou superior

## Dev Container / Codespaces

Este repo já inclui um `.devcontainer/devcontainer.json`.

- **GitHub Codespaces:** crie um Codespace a partir do **seu próprio repositório** e ele usará o devcontainer automaticamente.
- **VS Code Dev Containers:** clone localmente, depois execute `Dev Containers: Reopen in Container`.
- **Publicação no GitHub Pages:** o deploy está configurado para o seu próprio repositório.

## Executar

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

O deploy é feito automaticamente no GitHub Pages ao fazer push na branch `main`.
