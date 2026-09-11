<!-- l10n-sync: source-file="workshop/02-design.md" -->
# Parte 2: Frontend Design-First

[← Parte 1](01-setup.md)

---

Ahora que hemos trabajado la ingeniería de contexto del repo, vamos a ponernos creativos.

---

### Tarea 1: Hazlo Tuyo

Comienza los trabajos grandes en Plan mode. Copilot inspeccionará la aplicación actual y sus instrucciones de frontend y Tailwind, y luego propondrá un plan de rediseño sin cambiar el código. Usa esta conversación de planificación para definir la dirección visual, preservar el comportamiento del juego y acordar cómo se validará el resultado.

**Pasos:**

1. Cambia a Plan mode
2. Prompt: *"Hagamos un rediseño completo. Hazlo…"* y termina con una idea de tema de la lista siguiente o tu propia dirección
3. Revisa la experiencia propuesta, las áreas afectadas y el enfoque de validación
4. Itera en el plan al menos dos veces con ajustes y aclaraciones concretos; Copilot lo revisará sin implementarlo todavía
5. Cuando el plan esté listo, elige:
   - **Start with Autopilot (recomendado):** deja que Copilot implemente y valide el plan de forma autónoma
   - **Start Implementation:** comienza la implementación con el flujo de aprobación estándar
   - **Open in Editor:** edita o guarda el plan antes de implementarlo
6. Revisa la aplicación en ejecución y la validación del agente antes de aceptar los cambios

**Ideas de Temas:**

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

✅ **Resultado:** Las instrucciones de frontend y Tailwind se usan para crear un diseño hermoso.

> ⏱️ **Punto de control de contexto (1 minuto):** Después de esta conversación de diseño sustancial, ejecuta `/compact` si aparece en el menú de comandos con barra de tu destino de sesión de Copilot o Copilot CLI. Revisa el resumen antes de continuar. Si tu sesión Local no lo muestra, omite este paso. La compactación conserva las decisiones clave y libera contexto para la siguiente fase: ingeniería de contexto aplicada a la conversación.

---

### Tarea 2: Mantén las Instrucciones Actualizadas

Mantén las instrucciones actualizadas con cambios importantes de arquitectura/diseño/dependencias.

**Pasos:**

1. Follow-up: `/create-instructions design guide`
2. Confirma, haz commit y push

Bonus: Verifica que GitHub Pages se esté actualizando.

---

### Tarea 3: Refina un Elemento Real

Reemplaza un follow-up de diseño a ciegas con feedback preciso sobre la UI en ejecución.

**Pasos:**

1. Mantén la app rediseñada abierta en el navegador integrado de VS Code.
2. Abre el menú **Add to Chat** de la barra del navegador y selecciona **Comment on Elements** (`Ctrl+Alt+C` en Windows/Linux).
3. Selecciona un elemento real con un problema visible, como la acción principal o una tarjeta de pregunta, y describe el problema visual o de UX específico.
4. En Chat, envía: *"Corrige este problema del elemento sin cambiar el comportamiento del juego. Luego usa las herramientas del navegador para inspeccionar el elemento actualizado y verificar su interacción."*
5. Revisa el cambio y la verificación del navegador que hizo el agente; después recarga la página y confirma que el problema está resuelto.

✅ **Resultado:** El elemento seleccionado lleva contexto concreto del navegador a Chat, y el agente implementa y verifica una mejora enfocada.

---

## ✅ ¡Parte 2 Completa!

Aprendiste cómo:
- Usar Plan Mode para tareas complejas de diseño
- Iterar en los planes antes de implementar
- Compactar el contexto acumulado antes de cambiar de fase cuando sea compatible
- Mantener instrucciones actualizadas con cambios
- Comentar un elemento real del navegador y verificar la corrección implementada
