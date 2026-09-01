# Part 3: Custom Quiz Master

[← Part 2](02-design.md)

---

Define your own specialized workflows with custom agents, beyond generic coding prompts.

---

### Task: Your Own Quiz Master

**Steps:**

1. New Chat, pick *Quiz Master* as custom agent
2. `Update questions to …` or just `Update quiz`
3. Check the prompt and `handoffs` frontmatter in `.github/agents/quiz-master.agent.md`
4. Review the generated questions, then select **Polish this quiz theme**. Because the handoff uses `send: false`, inspect or edit the pre-filled prompt before you approve and send it to *Pixel Jam*.
5. Review Pixel Jam's focused visual integration of the new theme and its browser verification.

> ⏱️ **Handoff exercise (2 minutes):** This is a human-approved handoff: the conversation context moves to another specialist, but that specialist waits for you to send the prompt. In Part 4, the TDD orchestrator instead invokes Red, Green, and Refactor as autonomous subagents without approval between phases.

**Theme Ideas:**

- Skill Bingo: Workplace or technical skills
- Personality Bingo: Preferences, quirks, fun traits
- Secret Challenge Bingo: Quick micro-tasks with people you meet
- Team Bingo: Department or team categories
- Classic Facts Bingo: Birthday month, pets, etc.
- Work Culture Bingo: Productivity habits, meeting styles, tools
- Tech Life Bingo: Coding languages, shortcuts, frameworks, dev memes
- Travel Bingo: Cities lived in, countries visited, cultural traditions
- Creative Bingo: Music, art, design tastes, creative skills
- Micro-Challenge Bingo: Quick actions (teach a word, show a meme)
- Deep Chat Bingo: Reflective or meaningful conversation starters
- Office Humor Bingo: Desk quirks, caffeine habits, meeting hot takes
- Opposites Bingo: Find someone who is your opposite on specific axes
- Fandom Bingo: Sci-fi, gaming, books, shows, niche interests
- Lifestyle Bingo: Sleep, fitness, food, routines
- Mystery Bingo: Guess who matches a trait and verify
- Chaos Bingo: Surprising, absurd, unpredictable prompts

✅ **Result:** Quiz Master creates engaging themed questions, then an approved handoff lets Pixel Jam visually integrate that specific theme.

---

## ✅ Part 3 Complete!

You've learned how to:
- Use custom agents for specialized workflows
- Generate themed quiz questions
- Review and trigger a scoped handoff between custom agents
- Distinguish human-approved handoffs from autonomous subagent orchestration
