# Part 4: Multi-Agent Development

[← Part 3](03-quiz-master.md)

---

## Task 1: Agent Hooks — Test Gate

[Agent hooks](https://code.visualstudio.com/docs/agent-customization/hooks) execute shell commands at key lifecycle points during agent sessions. Hooks are Preview and can be disabled by your organization's `ChatHooks` policy. We'll activate a workspace-scoped **Stop hook** that gates *every* agent — no agent can finish until all tests pass.

**Steps:**

1. Confirm `npm test` passes, then open `.github/hooks/`
2. Review the cross-platform `test-gate.sh`, `test-gate.ps1`, and inactive `test-gate.json.example` files
3. Prompt: *Activate the workspace Stop hook by copying the safe template to `.github/hooks/test-gate.json`. Keep the Bash default and Windows PowerShell override.*
4. Review the JSON before accepting it. If hooks are disabled by policy, continue the TDD exercise and run tests manually.

✅ **Result:** Every agent now has a safety net — it will keep working until all tests pass before handing back control.

---

## Task 2: New Bingo Pattern (TDD-Driven)

Use the TDD agent to add a "Four Corners" bingo pattern. The workspace stop hook you set up will enforce test discipline — every agent must leave tests passing before it hands back control.

Unlike the reviewed handoff in Part 3, the TDD agent's `agents` list lets it invoke Red, Green, and Refactor autonomously as subagents.

**Steps:**

1. New chat with agent: `TDD`
2. *Add a "Four Corners" bingo win pattern — all four corner squares (top-left, top-right, bottom-left, bottom-right) must be marked*
3. Watch TDD orchestrate:
   - **TDD Red** writes failing tests for Four Corners detection
   - Review the new tests in VS Code's test runner
   - **TDD Green** implements the minimal code to pass — stop hook fires, keeps it going if tests fail
   - **TDD Refactor** cleans up the implementation
   - Click on any sub-agent while it runs to see its context and instructions
4. Review the summary of changes

✅ **Result:** Orchestrated TDD cycle with automatic test gating — no manual handoffs between agents.

---

## Task 3: Verify with Agent Debug Logs

Inspect what happened under the hood — did the hook fire? How did agents communicate?

**Steps:**

1. Verify the hook loads: open the **GitHub Copilot Chat Hooks** output channel (Output panel → channel dropdown)
2. Open Agent Debug Logs: gear icon (⚙️) in Chat view → **Show Agent Debug Logs**
3. **Logs view:** filter for hook execution events during the TDD cycle
4. **Agent Flow Chart:** visualize the TDD → Red → Green → Refactor orchestration
5. **Summary view:** review total tool calls and token usage

The workspace enables debug logs for Local and Agent Host sessions. Logs can contain prompts, context, and tool details, so disable file logging after the exercise on sensitive projects.

**Bonus:** Click the ✨ sparkle icon to attach debug events to a new chat, then ask: `/troubleshoot did the Stop hook fire during the TDD cycle?`

✅ **Result:** Full observability into multi-agent orchestration and hook execution.

---

## Task 4: Card Deck Shuffle (Design-Driven)

Break down agent workflows into specific focus areas, like design-first.

**Steps:**

1. New chat with agent: `Pixel Jam`
2. *New mode: Card Deck Shuffle. Every player opens the game → taps → gets a random card with a question.*
3. Agent iterates on the UI
4. Follow up to make it work like you want:
   - *Add left/right (fail, success)*
   - *Draw a card right when I open it*
5. Commit

---

## Task 5: UX Review Agent

Combine MCP, custom workflows, and subagent isolation in an agent for powerful workflows. Focus on different aspects, like usability, a11y, compliance.

> 🔒 **Least-privilege option:** [GitHub MCP configuration](https://github.com/github/github-mcp-server/blob/main/docs/server-configuration.md) can limit loaded toolsets or enable read-only mode. This lab keeps writes available because the bonus files and assigns issues; for a read-only review, enable read-only mode and skip that bonus. Lockdown mode is best-effort content filtering, not a security boundary.

**Steps:**

1. New chat with agent: `UI Review`: *Start*
2. Keep the app open in VS Code browser preview while the review runs
3. Follow along as it reviews
   - Aside: Open `.github/agents/ui-review.agent.md` to review the agent definition
4. Behold a mighty in-depth review

**Bonus:**
- File findings as issues on GitHub for later
- Assign critical issues to coding agent to fix

---

## Bonus: Keep Going

- Fix selected UX review problems in a separate Local session
- Add ability to have multiple question themes to pick from
- Add social sharing to win state
- Make a real iOS or full-stack app?

---

## ✅ Part 4 Complete!

You've learned how to:
- Add workspace-scoped agent hooks to enforce quality gates (Stop hook on all agents)
- Use TDD to orchestrate Red → Green → Refactor automatically
- Inspect agent behavior with Agent Debug Logs and Flow Charts
- Use design-first agents for UI-driven development
- Run UX review agents for comprehensive testing
- Combine multiple agent types for complex workflows

### Keep Going

- 📺 [VS Code on YouTube](https://www.youtube.com/code)
- 📖 [VS Code agents documentation](https://code.visualstudio.com/docs/agents/overview)
- 🌟 [Awesome Copilot](https://github.com/github/awesome-copilot)

👉 **[Continue to Part 5: Completion & Next Steps →](05-complete.md)**
