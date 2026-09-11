<!-- l10n-sync: source-file="workshop/02-design.md" -->
# Parte 2: Frontend Design-First

[← Parte 1](01-setup.md)

---

Agora que engenheiramos o contexto do repo, vamos ser criativos.

---

### Tarefa 1: Deixe a Sua Cara

Comece trabalhos maiores no Plan mode. O Copilot vai inspecionar o aplicativo atual e suas instruções de frontend e Tailwind e, em seguida, propor um plano de redesign sem alterar o código. Use essa conversa de planejamento para definir a direção visual, preservar o comportamento do jogo e combinar como o resultado será validado.

**Passos:**

1. Mude para Plan mode
2. Prompt: *"Vamos fazer um redesign completo. Faça algo…"* e conclua com uma ideia de tema abaixo ou sua própria direção
3. Revise a experiência proposta, as áreas afetadas e a abordagem de validação
4. Itere no plano pelo menos duas vezes com ajustes e esclarecimentos concretos; o Copilot vai revisá-lo sem implementar ainda
5. Quando o plano estiver pronto, escolha:
   - **Start with Autopilot (recomendado):** deixe o Copilot implementar e validar o plano de forma autônoma
   - **Start Implementation:** inicie a implementação com o fluxo de aprovação padrão
   - **Open in Editor:** edite ou salve o plano antes da implementação
6. Revise o aplicativo em execução e a validação do agente antes de aceitar as alterações

**Ideias de Temas:**

- Minimalist Mono
- Grotesque Type Grid
- Retro Terminal Green
- Vaporwave Sunset
- Cyberpunk Neon
- Brutalist Blocks
- Soft Pastel Clouds
- Skeuomorphic Stickers
- Dark Mode Noir
- Playful Candy Pop
- Pixel Arcade Style
- Scandinavian Calm
- Corporate Clean Blue
- Gradient Glass UI
- Notebook Doodle Sketch
- Space Galaxy Glow
- Paper Card Cutouts
- Geometric Memphis
- Cozy Coffee Shop
- Metallic Chrome UI
- Bold Constructivist
- Eco Leafy Green
- Anime Bubble Aesthetic
- Monochrome Newspaper
- Chalkboard Classroom
- Yacht Club Nautical
- Desert Sand Minimal
- Bold Serif Vintage
- Toybox Primary Colors

✅ **Resultado:** As instruções de frontend e Tailwind são usadas para criar um design bonito.

> ⏱️ **Checkpoint de contexto (1 minuto):** Depois desta conversa de design substancial, execute `/compact` se ele aparecer no menu de comandos com barra do seu destino de sessão do Copilot ou do Copilot CLI. Revise o resumo antes de continuar. Se sua sessão Local não o listar, pule esta etapa. A compactação preserva decisões importantes e libera contexto para a próxima fase: engenharia de contexto aplicada à própria conversa.

---

### Tarefa 2: Mantenha as Instruções Atualizadas

Mantenha as instruções atualizadas com mudanças importantes de arquitetura/design/dependências.

**Passos:**

1. Follow-up: `/create-instructions design guide`
2. Confirme, faça commit e push

Bônus: Verifique se o GitHub Pages está atualizando.

---

### Tarefa 3: Refine um Elemento Real

Substitua um follow-up de design às cegas por feedback preciso sobre a UI em execução.

**Passos:**

1. Mantenha o app redesenhado aberto no navegador integrado do VS Code.
2. Abra o menu **Add to Chat** da barra do navegador e selecione **Comment on Elements** (`Ctrl+Alt+C` no Windows/Linux).
3. Selecione um elemento real com um problema visível, como a ação principal ou um card de pergunta, e descreva o problema visual ou de UX específico.
4. No Chat, envie: *"Corrija este problema do elemento sem alterar o comportamento do jogo. Depois use as ferramentas do navegador para inspecionar o elemento atualizado e verificar sua interação."*
5. Revise a alteração e a verificação do navegador feita pelo agente; depois recarregue a página e confirme que o problema foi resolvido.

✅ **Resultado:** O elemento selecionado leva contexto concreto do navegador ao Chat, e o agente implementa e verifica uma melhoria focada.

---

## ✅ Parte 2 Completa!

Você aprendeu como:
- Usar Plan Mode para tarefas complexas de design
- Iterar nos planos antes de implementar
- Compactar o contexto acumulado antes de mudar de fase quando houver suporte
- Manter instruções atualizadas com mudanças
- Comentar um elemento real do navegador e verificar a correção implementada
