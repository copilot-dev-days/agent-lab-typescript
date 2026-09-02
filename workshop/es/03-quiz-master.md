<!-- l10n-sync: source-file="workshop/03-quiz-master.md" -->
# Parte 3: Quiz Master Personalizado

[← Parte 2](02-design.md)

---

Define tus propios flujos de trabajo especializados con agentes personalizados, yendo más allá de prompts genéricos de código.

---

### Tarea: Tu Propio Quiz Master

**Pasos:**

1. Nuevo Chat, selecciona *Quiz Master* como agente personalizado
2. `Actualiza las preguntas para…` o simplemente `Update quiz`
3. Revisa el prompt y el frontmatter `handoffs` en `.github/agents/quiz-master.agent.md`
4. Revisa las preguntas generadas y selecciona **Polish this quiz theme**. Como el handoff usa `send: false`, inspecciona o edita el prompt prellenado antes de aprobarlo y enviarlo a *Pixel Jam*.
5. Revisa la integración visual enfocada que Pixel Jam hace del nuevo tema y su verificación en el navegador.

> ⏱️ **Ejercicio de handoff (2 minutos):** Este es un handoff aprobado por una persona: el contexto de la conversación pasa a otro especialista, pero ese especialista espera a que envíes el prompt. En la Parte 4, el orquestador TDD invoca Red, Green y Refactor como subagentes autónomos sin aprobación entre fases.

**Ideas de Temas:**

- Skill Bingo: Habilidades profesionales o técnicas
- Personality Bingo: Preferencias, manías, rasgos divertidos
- Secret Challenge Bingo: Micro-desafíos rápidos con personas que conozcas
- Team Bingo: Categorías por departamento o equipo
- Classic Facts Bingo: Mes de cumpleaños, mascotas, etc.
- Work Culture Bingo: Hábitos de productividad, estilos de reunión, herramientas
- Tech Life Bingo: Lenguajes de programación, atajos, frameworks, memes de dev
- Travel Bingo: Ciudades donde viviste, países visitados, tradiciones culturales
- Creative Bingo: Gustos musicales, arte, diseño, habilidades creativas
- Micro-Challenge Bingo: Acciones rápidas (enseñar una palabra, mostrar un meme)
- Deep Chat Bingo: Conversaciones reflexivas o significativas para iniciar
- Office Humor Bingo: Manías de escritorio, hábitos de cafeína, opiniones picantes sobre reuniones
- Opposites Bingo: Encuentra a alguien que sea tu opuesto en ejes específicos
- Fandom Bingo: Sci-fi, gaming, libros, series, intereses de nicho
- Lifestyle Bingo: Sueño, ejercicio, comida, rutinas
- Mystery Bingo: Adivina quién tiene un rasgo y verifica
- Chaos Bingo: Prompts sorprendentes, absurdos e impredecibles

✅ **Resultado:** Quiz Master crea preguntas temáticas atractivas y un handoff aprobado permite que Pixel Jam integre visualmente ese tema específico.

---

## ✅ ¡Parte 3 Completa!

Aprendiste cómo:
- Usar agentes personalizados para flujos de trabajo especializados
- Generar preguntas de quiz temáticas
- Revisar y activar un handoff enfocado entre agentes personalizados
- Distinguir handoffs aprobados por personas de la orquestación autónoma de subagentes
