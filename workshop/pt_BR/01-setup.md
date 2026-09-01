<!-- l10n-sync: source-file="workshop/01-setup.md" -->
# Parte 1: Configuração & Engenharia de Contexto

[← Visão Geral](00-overview.md)

---

Nesta seção, você vai configurar seu ambiente de desenvolvimento e ensinar o GitHub Copilot sobre seu codebase.

> 🎮 **[Jogue o Bingo Mixer](https://copilot-dev-days.github.io/agent-lab-typescript/game/)** — Veja o que você vai construir!

---

## 🔧 Configuração Inicial

### Passo 1: Crie Seu Repositório (Obrigatório)

1. Abra [github.com/copilot-dev-days/agent-lab-typescript](https://github.com/copilot-dev-days/agent-lab-typescript)
2. Clique em **Use this template** → **Create a new repository**
   - Nome: `my-bingo-mixer`
   - Visibilidade: **Public**
3. ✅ Seu próprio repo do Bingo Mixer está pronto!

### Passo 2: Habilite o GitHub Pages

1. Vá em **Settings** → **Pages** do seu repo
2. Em "Build and deployment", mude *Deploy from a branch* para **GitHub Actions**
3. ✅ Qualquer commit agora vai publicar em: `https://{username}.github.io/{repo-name}`

### Passo 3: Escolha Como Vai Desenvolver

#### Opção A: Clone localmente no VS Code

1. Abra o VS Code
2. Execute o comando: `Git: Clone` → `Clone from GitHub`
3. Selecione seu novo repositório
4. Instale as extensões recomendadas (notificação ou `Extensions: Show Recommended Extensions`)

#### Opção B: Crie um Codespace para seu repo

1. Abra seu repositório no GitHub
2. Clique em **Code** → **Codespaces** → **Create codespace on main**
3. ✅ O Codespace inicia com seu repo e devcontainer.

### Passo 4: Revise Confiança e Aprovações

Antes que o setup se torne autônomo:

1. No Chat, selecione o destino de sessão **Local** e **Default Approvals**. Não use **Bypass Approvals**, que aprova todas as chamadas de ferramentas.
2. Abra `.vscode/settings.json` e revise a lista permitida do terminal. O workspace adiciona aprovação automática apenas para seus scripts exatos `npm run dev`, `lint`, `build` e `test`, além de `npm test`; instalação, `npx`, argumentos adicionais e comandos não relacionados ainda exigem revisão.
3. Aplique privilégio mínimo: inspecione cada comando solicitado e aprove apenas o comando exato pelo menor período útil.

> Um Git worktree pode dar a sessões de agentes paralelas arquivos de trabalho separados para que suas alterações não entrem em conflito, mas não restringe comandos, acesso à rede nem acesso fora dessa cópia de trabalho. Algumas sessões de worktree do Agent Host ficam fixas em Bypass Approvals, então use uma sessão de pasta Local comum para este exercício. Saiba mais em [Approvals](https://code.visualstudio.com/docs/agents/run/approvals).

### Passo 5: Execute a Skill de Setup

No painel de Chat:

```
/setup
```

Quando a skill propuser `npm install`, revise e aprove esse comando exato uma vez. Deixe o agente identificar os passos de instalação restantes sem ampliar as aprovações.

✅ **Sucesso:** O app está rodando e aberto no navegador!

Mantenha este guia do `workshop/` aberto (📌 Fixar).

---

## 📚 Entendendo Engenharia de Contexto

Engenharia de contexto é como você ensina a IA sobre seu codebase específico. Isso torna as sugestões do Copilot mais precisas e relevantes.

### Tarefa 1: Instruções Auto-geradas

Instruções orientam todas as interações agênticas com o codebase, tornando-as mais eficientes e confiáveis. Adicione-as cedo, mas mantenha-as atualizadas e concisas.

**Passos:**

1. Execute o prompt: `/init` com Autopilot habilitado
   - Com base nas convenções existentes do repo, `/init` pode gerar ou atualizar `.github/copilot-instructions.md` ou um `AGENTS.md` na raiz.
   - Enquanto o agente analisa o codebase, opcionalmente comece a próxima tarefa
2. Abra um novo chat para a próxima tarefa, pois o init pode demorar e podemos revisar depois.
3. Revise os resultados — não está longo e detalhado demais?
   1. Follow-up opcional: *"Comprima e adicione uma checklist de desenvolvimento obrigatória [ ] (lint, build, test) no topo"*
4. Aplique e faça commit

> Um `AGENTS.md` na raiz é uma opção portátil quando várias ferramentas de IA compartilham o repo. Use apenas um arquivo raiz aqui; o comportamento de `AGENTS.md` aninhados é experimental e está fora deste lab.

✅ **Resultado:** Todas as futuras solicitações terão um mapa básico do workspace.

---

### Tarefa 2: Dogfooding & Skills Personalizadas

**Passos:**

1. Prompt: *"Teste o app como um dogfooder crítico, dando feedback crítico sobre o quão divertido ele é"*
2. Observe como o agente abre o navegador integrado, interage com o app e escreve um relatório
3. `/create-skill` *para dogfooding* — ou: *"Salve isso como uma skill de dogfooding"*

✅ **Resultado:** O agente usou o navegador para realmente jogar o app e produziu um relatório crítico. Você então salvou essa abordagem de teste como uma skill reutilizável de dogfooding.

> 💡 **Insight de engenharia de contexto:** O agente precisa de contexto prático — executar o app, ver a UI, clicar pelos fluxos — para realmente entender como funciona e validar a funcionalidade. Só o código não basta; interagir com o produto em execução fecha a lacuna entre ler código e entender a experiência do usuário.

---

### Tarefa 3: Modal de Customização

Explore as customizações do repo para entender como a engenharia de contexto funciona na prática.

**Passos:**

1. Abra o painel de Customização, Comando: `Chat: Open Customizations (Preview)`
2. Navegue pelas customizações do repo — instruções, skills e agentes
3. Veja a **skill de design frontend** e as **instruções de Tailwind 4**

> 💡 **Pense sobre:** Quais convenções ou padrões dos seus próprios projetos poderiam se tornar instruções ou skills?

> 🔒 **Nota de exclusão:** O arquivo `.copilotignore` na raiz contém padrões complementares para arquivos de ambiente, chaves privadas e saídas geradas nas contas em que o VS Code habilita esse recurso. Ele deliberadamente não exclui o workshop nem o código-fonte e não é um limite de segurança. A [exclusão de conteúdo](https://docs.github.com/en/copilot/concepts/context/content-exclusion) administrada pela organização exige Copilot Business ou Enterprise e atualmente não cobre os modos Edit/Agent da IDE nem o Copilot CLI.

---

## ✅ Parte 1 Completa!

Você aprendeu como:
- Configurar seu ambiente de desenvolvimento
- Gerar e refinar instruções do workspace
- Testar seu app com o navegador integrado do agente
- Criar e salvar skills personalizadas
- Explorar customizações do repo (instruções, skills, agentes)
