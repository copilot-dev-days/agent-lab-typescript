<!-- l10n-sync: source-file="README.md" -->
# Bingo Mixer

Bingo Mixer es un juego de bingo social para encuentros presenciales. ¡Encuentra personas que coincidan con las preguntas y consigue 5 en línea!

📚 **[Ver Guía del Lab](workshop/es/GUIDE.md)**
🚀 **[Comienza por la configuración](workshop/es/01-setup.md)**

---

## 📚 Guía del Lab

| Parte | Título |
|-------|--------|
| [**00**](workshop/es/00-overview.md) | Descripción General & Lista Rápida |
| [**01**](workshop/es/01-setup.md) | Configuración & Ingeniería de Contexto |
| [**02**](workshop/es/02-design.md) | Frontend Design-First |
| [**03**](workshop/es/03-quiz-master.md) | Quiz Master Personalizado |
| [**04**](workshop/es/04-multi-agent.md) | Desarrollo Multi-Agente |
| [**05**](workshop/es/05-complete.md) | Finalización y Próximos Pasos |

> 📝 Las guías del lab también están disponibles en la carpeta [`workshop/es/`](workshop/es/) para lectura offline.

---

## Requisitos Previos

- VS Code **1.135 o posterior** con GitHub Copilot; usa una sesión de chat **Local** para el lab
- [Node.js 22](https://nodejs.org/) o superior

## Dev Container / Codespaces

Este repo ya incluye un `.devcontainer/devcontainer.json`.

- **GitHub Codespaces:** crea un Codespace desde **tu propio repositorio** y usará el devcontainer automáticamente.
- **VS Code Dev Containers:** clona localmente, luego ejecuta `Dev Containers: Reopen in Container`.
- **Publicación en GitHub Pages:** el deploy está configurado para tu propio repositorio.

## Ejecutar

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

El deploy se realiza automáticamente en GitHub Pages al hacer push a la rama `main`.
