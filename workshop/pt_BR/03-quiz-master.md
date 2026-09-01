<!-- l10n-sync: source-file="workshop/03-quiz-master.md" -->
# Parte 3: Quiz Master Personalizado

[← Parte 2](02-design.md)

---

Defina seus próprios fluxos de trabalho especializados com agentes personalizados, indo além de prompts genéricos de código.

---

### Tarefa: Seu Próprio Quiz Master

**Passos:**

1. Novo Chat, selecione *Quiz Master* como agente personalizado
2. `Atualize as perguntas para…` ou apenas `Update quiz`
3. Confira o prompt e o frontmatter `handoffs` em `.github/agents/quiz-master.agent.md`
4. Revise as perguntas geradas e selecione **Polish this quiz theme**. Como o handoff usa `send: false`, inspecione ou edite o prompt pré-preenchido antes de aprová-lo e enviá-lo ao *Pixel Jam*.
5. Revise a integração visual focada que o Pixel Jam faz do novo tema e sua verificação no navegador.

> ⏱️ **Exercício de handoff (2 minutos):** Este é um handoff aprovado por uma pessoa: o contexto da conversa passa para outro especialista, mas ele espera você enviar o prompt. Na Parte 4, o orquestrador TDD invoca Red, Green e Refactor como subagentes autônomos sem aprovação entre as fases.

**Ideias de Temas:**

- Skill Bingo: Habilidades profissionais ou técnicas
- Personality Bingo: Preferências, manias, traços divertidos
- Secret Challenge Bingo: Micro-desafios rápidos com pessoas que você conhecer
- Team Bingo: Categorias por departamento ou equipe
- Classic Facts Bingo: Mês de aniversário, pets, etc.
- Work Culture Bingo: Hábitos de produtividade, estilos de reunião, ferramentas
- Tech Life Bingo: Linguagens de programação, atalhos, frameworks, memes de dev
- Travel Bingo: Cidades onde morou, países visitados, tradições culturais
- Creative Bingo: Gostos musicais, arte, design, habilidades criativas
- Micro-Challenge Bingo: Ações rápidas (ensinar uma palavra, mostrar um meme)
- Deep Chat Bingo: Conversas reflexivas ou significativas para começar
- Office Humor Bingo: Manias de mesa, hábitos de cafeína, opiniões quentes sobre reuniões
- Opposites Bingo: Encontre alguém que seja seu oposto em eixos específicos
- Fandom Bingo: Sci-fi, games, livros, séries, interesses de nicho
- Lifestyle Bingo: Sono, exercício, comida, rotinas
- Mystery Bingo: Adivinhe quem tem um traço e verifique
- Chaos Bingo: Prompts surpreendentes, absurdos e imprevisíveis

✅ **Resultado:** O Quiz Master cria perguntas temáticas envolventes e um handoff aprovado permite que o Pixel Jam integre visualmente esse tema específico.

---

## ✅ Parte 3 Completa!

Você aprendeu como:
- Usar agentes personalizados para fluxos de trabalho especializados
- Gerar perguntas de quiz temáticas
- Revisar e acionar um handoff focado entre agentes personalizados
- Distinguir handoffs aprovados por pessoas da orquestração autônoma de subagentes
