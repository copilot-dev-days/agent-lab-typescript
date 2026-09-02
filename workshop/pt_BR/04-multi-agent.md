<!-- l10n-sync: source-file="workshop/04-multi-agent.md" -->
# Parte 4: Desenvolvimento Multi-Agente

[← Parte 3](03-quiz-master.md)

---

## Tarefa 1: Agent Hooks — Portão de Testes

[Agent hooks](https://code.visualstudio.com/docs/agent-customization/hooks) executam comandos shell em pontos-chave do ciclo de vida durante sessões de agente. Os hooks estão em Preview e podem ser desabilitados pela política `ChatHooks` da sua organização. Vamos ativar um **Stop hook** com escopo de workspace que bloqueia *todos* os agentes — nenhum agente pode finalizar até que todos os testes passem.

**Passos:**

1. Confirme que `npm test` passa e depois abra `.github/hooks/`
2. Revise os arquivos multiplataforma `test-gate.sh`, `test-gate.ps1` e o arquivo inativo `test-gate.json.example`
3. Prompt: *Ative o Stop hook do workspace copiando o template seguro para `.github/hooks/test-gate.json`. Mantenha o padrão Bash e o override do Windows PowerShell.*
4. Revise o JSON antes de aceitar. Se os hooks estiverem desabilitados por política, continue o exercício de TDD e execute os testes manualmente.

✅ **Resultado:** Todo agente agora tem uma rede de segurança — ele vai continuar trabalhando até que todos os testes passem antes de devolver o controle.

---

## Tarefa 2: Novo Padrão de Bingo (Orientado por TDD)

Use o agente TDD para adicionar um padrão de bingo "Four Corners". O stop hook do workspace que você configurou vai garantir a disciplina de testes — todo agente deve deixar os testes passando antes de devolver o controle.

Ao contrário do handoff revisado na Parte 3, a lista `agents` do agente TDD permite que ele invoque Red, Green e Refactor de forma autônoma como subagentes.

**Passos:**

1. Novo chat com agente: `TDD`
2. *Adicione um padrão de vitória "Four Corners" no bingo — todos os quatro quadrados dos cantos (superior-esquerdo, superior-direito, inferior-esquerdo, inferior-direito) devem estar marcados*
3. Observe o TDD orquestrar:
   - **TDD Red** escreve testes que falham para a detecção de Four Corners
   - Revise os novos testes no test runner do VS Code
   - **TDD Green** implementa o código mínimo para passar — o stop hook dispara, continua se os testes falharem
   - **TDD Refactor** limpa a implementação
   - Clique em qualquer sub-agente enquanto ele executa para ver seu contexto e instruções
4. Revise o resumo das mudanças

✅ **Resultado:** Ciclo TDD orquestrado com portão de testes automático — sem handoffs manuais entre agentes.

---

## Tarefa 3: Verifique com Agent Debug Logs

Inspecione o que aconteceu por baixo dos panos — o hook disparou? Como os agentes se comunicaram?

**Passos:**

1. Verifique se o hook carrega: abra o canal de saída **GitHub Copilot Chat Hooks** (painel Output → dropdown de canal)
2. Abra Agent Debug Logs: ícone de engrenagem (⚙️) na view do Chat → **Show Agent Debug Logs**
3. **Aba Logs:** filtre por eventos de execução do hook durante o ciclo TDD
4. **Agent Flow Chart:** visualize a orquestração TDD → Red → Green → Refactor
5. **Aba Summary:** revise o total de chamadas de ferramenta e uso de tokens

O workspace habilita os debug logs para sessões Local e Agent Host. Os logs podem conter prompts, contexto e detalhes de ferramentas; desabilite o registro em arquivos após o exercício em projetos sensíveis.

**Bônus:** Clique no ícone ✨ sparkle para anexar eventos de debug a um novo chat, depois pergunte: `/troubleshoot o Stop hook disparou durante o ciclo TDD?`

✅ **Resultado:** Observabilidade completa da orquestração multi-agente e execução de hooks.

---

## Tarefa 4: Card Deck Shuffle (Orientado por Design)

Divida fluxos de trabalho de agentes em áreas de foco específicas, como design-first.

**Passos:**

1. Novo chat com agente: `Pixel Jam`
2. *Novo modo: Card Deck Shuffle. Todo jogador abre o jogo → toca → recebe uma carta aleatória com uma pergunta.*
3. O agente itera na UI
4. Dê follow-up para funcionar como você quer:
   - *Adicione esquerda/direita (falha, sucesso)*
   - *Puxe uma carta logo quando eu abrir*
5. Commit

---

## Tarefa 5: Agente de Revisão de UX

Combine MCP, fluxos de trabalho personalizados e isolamento de sub-agentes em um agente para fluxos de trabalho poderosos. Foque em diferentes aspectos, como usabilidade, a11y, conformidade.

> 🔒 **Opção de privilégio mínimo:** A [configuração do GitHub MCP](https://github.com/github/github-mcp-server/blob/main/docs/server-configuration.md) pode limitar os toolsets carregados ou habilitar o modo somente leitura. Este lab mantém operações de escrita disponíveis porque o bônus registra e atribui issues; para uma revisão somente leitura, habilite esse modo e pule o bônus. O modo lockdown é um filtro de conteúdo de melhor esforço, não um limite de segurança.

**Passos:**

1. Novo chat com agente: `UI Review`: *Começar*
2. Mantenha o app aberto na pré-visualização do navegador do VS Code enquanto a revisão executa
3. Acompanhe conforme ele revisa
   - À parte: Abra `.github/agents/ui-review.agent.md` para revisar a definição do agente
4. Contemple uma revisão profunda e detalhada

**Bônus:**
- Registre achados como issues no GitHub para depois
- Atribua issues críticas ao agente de código para corrigir

---

## Bônus: Continue Explorando

- Corrija problemas selecionados da revisão de UX em uma sessão Local separada
- Adicione a possibilidade de ter múltiplos temas de perguntas para escolher
- Adicione compartilhamento social no estado de vitória
- Faça um app real para iOS ou full-stack?

---

## ✅ Parte 4 Completa!

Você aprendeu como:
- Adicionar agent hooks com escopo de workspace para impor portões de qualidade (Stop hook em todos os agentes)
- Usar TDD para orquestrar Red → Green → Refactor automaticamente
- Inspecionar comportamento do agente com Agent Debug Logs e Flow Charts
- Usar agentes design-first para desenvolvimento orientado por UI
- Executar agentes de revisão de UX para testes abrangentes
- Combinar múltiplos tipos de agentes para fluxos de trabalho complexos

### Continue Explorando

- 📺 [VS Code on YouTube](https://www.youtube.com/code)
- 📖 [Documentação de agentes do VS Code](https://code.visualstudio.com/docs/agents/overview)
- 🌟 [Awesome Copilot](https://github.com/github/awesome-copilot)

👉 **[Continue para a Parte 5: Conclusão e Próximos Passos →](05-complete.md)**
