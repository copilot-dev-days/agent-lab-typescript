<!-- l10n-sync: source-file="workshop/04-multi-agent.md" -->
# Parte 4: Desarrollo Multi-Agente

[← Parte 3](03-quiz-master.md)

---

## Tarea 1: Agent Hooks — Puerta de Pruebas

[Agent hooks](https://code.visualstudio.com/docs/agent-customization/hooks) ejecutan comandos shell en puntos clave del ciclo de vida durante sesiones de agente. Los hooks están en Preview y pueden estar deshabilitados por la política `ChatHooks` de tu organización. Vamos a activar un **Stop hook** con alcance de workspace que bloquea *todos* los agentes — ningún agente puede finalizar hasta que todas las pruebas pasen.

**Pasos:**

1. Confirma que `npm test` pasa y luego abre `.github/hooks/`
2. Revisa los archivos multiplataforma `test-gate.sh`, `test-gate.ps1` y el archivo inactivo `test-gate.json.example`
3. Prompt: *Activa el Stop hook del workspace copiando la plantilla segura a `.github/hooks/test-gate.json`. Conserva el valor predeterminado de Bash y el override de Windows PowerShell.*
4. Revisa el JSON antes de aceptarlo. Si los hooks están deshabilitados por política, continúa el ejercicio TDD y ejecuta las pruebas manualmente.

✅ **Resultado:** Cada agente ahora tiene una red de seguridad — seguirá trabajando hasta que todas las pruebas pasen antes de devolver el control.

---

## Tarea 2: Nuevo Patrón de Bingo (Orientado por TDD)

Usa el agente TDD para agregar un patrón de bingo "Four Corners". El stop hook del workspace que configuraste garantizará la disciplina de pruebas — cada agente debe dejar las pruebas pasando antes de devolver el control.

A diferencia del handoff revisado en la Parte 3, la lista `agents` del agente TDD le permite invocar Red, Green y Refactor de forma autónoma como subagentes.

**Pasos:**

1. Nuevo chat con agente: `TDD`
2. *Agrega un patrón de victoria "Four Corners" en bingo — los cuatro cuadrados de las esquinas (superior-izquierda, superior-derecha, inferior-izquierda, inferior-derecha) deben estar marcados*
3. Observa cómo TDD orquesta:
   - **TDD Red** escribe pruebas que fallan para la detección de Four Corners
   - Revisa las nuevas pruebas en el test runner de VS Code
   - **TDD Green** implementa el código mínimo para pasar — el stop hook se activa, continúa si las pruebas fallan
   - **TDD Refactor** limpia la implementación
   - Haz clic en cualquier sub-agente mientras se ejecuta para ver su contexto e instrucciones
4. Revisa el resumen de cambios

✅ **Resultado:** Ciclo TDD orquestado con puerta de pruebas automática — sin handoffs manuales entre agentes.

---

## Tarea 3: Verifica con Agent Debug Logs

Inspecciona lo que pasó bajo el capó — ¿se activó el hook? ¿Cómo se comunicaron los agentes?

**Pasos:**

1. Verifica que el hook cargue: abre el canal de salida **GitHub Copilot Chat Hooks** (panel Output → dropdown de canal)
2. Abre Agent Debug Logs: ícono de engranaje (⚙️) en la vista de Chat → **Show Agent Debug Logs**
3. **Pestaña Logs:** filtra por eventos de ejecución del hook durante el ciclo TDD
4. **Agent Flow Chart:** visualiza la orquestación TDD → Red → Green → Refactor
5. **Pestaña Summary:** revisa el total de llamadas de herramienta y uso de tokens

El workspace habilita los debug logs para sesiones Local y Agent Host. Los logs pueden contener prompts, contexto y detalles de herramientas, así que deshabilita el registro en archivos después del ejercicio en proyectos sensibles.

**Bonus:** Haz clic en el ícono ✨ sparkle para adjuntar eventos de debug a un nuevo chat, luego pregunta: `/troubleshoot ¿se activó el Stop hook durante el ciclo TDD?`

✅ **Resultado:** Observabilidad completa de la orquestación multi-agente y ejecución de hooks.

---

## Tarea 4: Card Deck Shuffle (Orientado por Diseño)

Divide los flujos de trabajo de agentes en áreas de enfoque específicas, como design-first.

**Pasos:**

1. Nuevo chat con agente: `Pixel Jam`
2. *Nuevo modo: Card Deck Shuffle. Cada jugador abre el juego → toca → recibe una carta aleatoria con una pregunta.*
3. El agente itera en la UI
4. Da follow-up para que funcione como quieres:
   - *Agrega izquierda/derecha (fallo, éxito)*
   - *Saca una carta justo cuando lo abra*
5. Commit

---

## Tarea 5: Agente de Revisión de UX

Combina MCP, flujos de trabajo personalizados y aislamiento de sub-agentes en un agente para flujos de trabajo poderosos. Enfócate en diferentes aspectos, como usabilidad, a11y, cumplimiento.

> 🔒 **Opción de privilegio mínimo:** La [configuración de GitHub MCP](https://github.com/github/github-mcp-server/blob/main/docs/server-configuration.md) puede limitar los toolsets cargados o habilitar el modo de solo lectura. Este lab mantiene disponibles las operaciones de escritura porque el bonus registra y asigna issues; para una revisión de solo lectura, habilita ese modo y omite el bonus. El modo lockdown es un filtro de contenido de mejor esfuerzo, no un límite de seguridad.

**Pasos:**

1. Nuevo chat con agente: `UI Review`: *Comenzar*
2. Mantén la app abierta en la vista previa del navegador de VS Code mientras la revisión se ejecuta
3. Sigue el proceso mientras revisa
   - Aparte: Abre `.github/agents/ui-review.agent.md` para revisar la definición del agente
4. Contempla una revisión profunda y detallada

**Bonus:**
- Registra hallazgos como issues en GitHub para después
- Asigna issues críticas al agente de código para corregir

---

## Bonus: Sigue Explorando

- Corrige problemas seleccionados de la revisión de UX en una sesión Local separada
- Agrega la posibilidad de tener múltiples temas de preguntas para elegir
- Agrega compartir en redes sociales en el estado de victoria
- ¿Haz una app real para iOS o full-stack?

---

## ✅ ¡Parte 4 Completa!

Aprendiste cómo:
- Agregar agent hooks con alcance de workspace para imponer puertas de calidad (Stop hook en todos los agentes)
- Usar TDD para orquestar Red → Green → Refactor automáticamente
- Inspeccionar comportamiento del agente con Agent Debug Logs y Flow Charts
- Usar agentes design-first para desarrollo orientado por UI
- Ejecutar agentes de revisión de UX para pruebas integrales
- Combinar múltiples tipos de agentes para flujos de trabajo complejos

### Sigue Explorando

- 📺 [VS Code on YouTube](https://www.youtube.com/code)
- 📖 [Documentación de agentes de VS Code](https://code.visualstudio.com/docs/agents/overview)
- 🌟 [Awesome Copilot](https://github.com/github/awesome-copilot)

👉 **[Continúa a la Parte 5: Finalización y Próximos Pasos →](05-complete.md)**
