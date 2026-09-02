<!-- l10n-sync: source-file="workshop/01-setup.md" -->
# Parte 1: Configuración & Ingeniería de Contexto

[← Descripción General](00-overview.md)

---

En esta sección, configurarás tu entorno de desarrollo y le enseñarás a GitHub Copilot sobre tu codebase.

> 🎮 **[Juega Bingo Mixer](https://copilot-dev-days.github.io/agent-lab-typescript/game/)** — ¡Mira lo que vas a construir!

---

## 🔧 Configuración Inicial

### Paso 1: Crea Tu Repositorio (Obligatorio)

1. Abre [github.com/copilot-dev-days/agent-lab-typescript](https://github.com/copilot-dev-days/agent-lab-typescript)
2. Haz clic en **Use this template** → **Create a new repository**
   - Nombre: `my-bingo-mixer`
   - Visibilidad: **Public**
3. ✅ ¡Tu propio repo de Bingo Mixer está listo!

### Paso 2: Habilita GitHub Pages

1. Ve a **Settings** → **Pages** de tu repo
2. En "Build and deployment", cambia *Deploy from a branch* a **GitHub Actions**
3. ✅ Cualquier commit ahora publicará en: `https://{username}.github.io/{repo-name}`

### Paso 3: Elige Cómo Vas a Desarrollar

#### Opción A: Clona localmente en VS Code

1. Abre VS Code
2. Ejecuta el comando: `Git: Clone` → `Clone from GitHub`
3. Selecciona tu nuevo repositorio
4. Instala las extensiones recomendadas (notificación o `Extensions: Show Recommended Extensions`)

#### Opción B: Crea un Codespace para tu repo

1. Abre tu repositorio en GitHub
2. Haz clic en **Code** → **Codespaces** → **Create codespace on main**
3. ✅ El Codespace inicia con tu repo y devcontainer.

### Paso 4: Revisa la Confianza y las Aprobaciones

Antes de que el setup sea autónomo:

1. En Chat, selecciona el destino de sesión **Local** y **Default Approvals**. No uses **Bypass Approvals**, que aprueba todas las llamadas a herramientas.
2. Abre `.vscode/settings.json` y revisa la lista permitida de terminal. El workspace agrega aprobación automática solo para sus scripts exactos `npm run dev`, `lint`, `build` y `test`, además de `npm test`; la instalación, `npx`, los argumentos adicionales y los comandos no relacionados todavía requieren revisión.
3. Aplica privilegio mínimo: inspecciona cada comando solicitado y aprueba solo el comando exacto durante el menor tiempo útil.

> Un Git worktree puede dar a sesiones de agentes paralelas archivos de trabajo separados para que sus cambios no choquen, pero no restringe comandos, acceso a la red ni acceso fuera de esa copia de trabajo. Algunas sesiones de worktree de Agent Host están fijadas en Bypass Approvals, así que usa una sesión de carpeta Local normal para este ejercicio. Más información en [Approvals](https://code.visualstudio.com/docs/agents/run/approvals).

### Paso 5: Ejecuta la Skill de Setup

En el panel de Chat:

```
/setup
```

Cuando la skill proponga `npm install`, revísalo y aprueba ese comando exacto una vez. Deja que el agente identifique los pasos de instalación restantes sin ampliar las aprobaciones.

✅ **Éxito:** ¡La app está corriendo y abierta en el navegador!

Mantén esta guía del `workshop/` abierta (📌 Fijar).

---

## 📚 Entendiendo la Ingeniería de Contexto

La ingeniería de contexto es cómo le enseñas a la IA sobre tu codebase específico. Esto hace que las sugerencias de Copilot sean más precisas y relevantes.

### Tarea 1: Instrucciones Auto-generadas

Las instrucciones guían todas las interacciones agénticas con el codebase, haciéndolas más eficientes y confiables. Agrégalas temprano, pero asegúrate de mantenerlas actualizadas y concisas.

**Pasos:**

1. Ejecuta el prompt: `/init` con Autopilot habilitado
   - Según las convenciones existentes del repo, `/init` puede generar o actualizar `.github/copilot-instructions.md` o un `AGENTS.md` en la raíz.
   - Mientras el agente analiza el codebase, opcionalmente comienza la siguiente tarea
2. Abre un nuevo chat para la siguiente tarea, ya que init puede tardar y podemos revisar después.
3. Revisa los resultados — ¿no es demasiado largo y detallado?
   1. Follow-up opcional: *"Comprime y agrega una checklist de desarrollo obligatoria [ ] (lint, build, test) en la parte superior"*
4. Aplica y haz commit

> Un `AGENTS.md` en la raíz es una opción portátil cuando varias herramientas de IA comparten el repo. Usa un solo archivo raíz aquí; el comportamiento de `AGENTS.md` anidados es experimental y está fuera de este lab.

✅ **Resultado:** Todas las solicitudes futuras tendrán un mapa básico del workspace.

---

### Tarea 2: Dogfooding & Skills Personalizadas

**Pasos:**

1. Prompt: *"Prueba la app como un dogfooder crítico, dando feedback crítico sobre qué tan divertida es"*
2. Observa cómo el agente abre el navegador integrado, interactúa con la app y escribe un reporte
3. `/create-skill` *para dogfooding* — o: *"Guarda esto como una skill de dogfooding"*

✅ **Resultado:** El agente usó el navegador para realmente jugar la app y produjo un reporte crítico. Luego guardaste ese enfoque de prueba como una skill reutilizable de dogfooding.

> 💡 **Insight de ingeniería de contexto:** El agente necesita contexto práctico — ejecutar la app, ver la UI, hacer clic en los flujos — para realmente entender cómo funciona y validar la funcionalidad. Solo el código no es suficiente; interactuar con el producto en ejecución cierra la brecha entre leer código y entender la experiencia del usuario.

---

### Tarea 3: Modal de Personalización

Explora las personalizaciones del repo para entender cómo funciona la ingeniería de contexto en la práctica.

**Pasos:**

1. Abre el panel de Personalización, Comando: `Chat: Open Customizations (Preview)`
2. Navega por las personalizaciones del repo — instrucciones, skills y agentes
3. Mira la **skill de diseño frontend** y las **instrucciones de Tailwind 4**

> 💡 **Piensa en:** ¿Qué convenciones o patrones de tus propios proyectos podrían convertirse en instrucciones o skills?

> 🔒 **Nota de exclusión:** El archivo `.copilotignore` de la raíz contiene patrones complementarios para archivos de entorno, claves privadas y resultados generados en las cuentas donde VS Code habilita esta función. Deliberadamente no excluye el workshop ni el código fuente, y no es un límite de seguridad. La [exclusión de contenido](https://docs.github.com/en/copilot/concepts/context/content-exclusion) administrada por una organización requiere Copilot Business o Enterprise y actualmente no cubre los modos Edit/Agent del IDE ni Copilot CLI.

---

## ✅ ¡Parte 1 Completa!

Aprendiste cómo:
- Configurar tu entorno de desarrollo
- Generar y refinar instrucciones del workspace
- Probar tu app con el navegador integrado del agente
- Crear y guardar skills personalizadas
- Explorar personalizaciones del repo (instrucciones, skills, agentes)
