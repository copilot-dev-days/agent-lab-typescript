# Soc Ops — A VS Code Agent Lab (1hr)

## Checklist

- [ ] Latest VS Code **v1.107** (no update pending)
- [ ] Signed in with GitHub
- [ ] Chat open and Agent ready for action

*Optional*: Use DevContainer or WSL.

## Learning Objectives

1. Onboard AI to your codebase and workflows with context engineering
2. In-depth understanding of the primitives to build an AI-first engineering flow
3. Unlocking agentic abundance to scale exploration and speed up learning across all development tasks

## Setup

https://github.com/microsoft/vscode-agent-lab-soc-ops

1. GitHub: *Use this template* > *Create a new repository*
2. VS Code
	- Install recommended extensions (notification or `Extensions: Show Recommended Extensions`)
	- Command: `Git: Clone > Clone from GitHub`
	- Agent: `/prompt`
3. 🎉 App is running and open in browser!

Keep `.lab/GUIDE.md` open.

## 1. Context engineering your repo

### Task: Run and understand the /setup prompt

**TL;DR:** AI-guided installations, so you don't have to read docs.

See `.github/prompts/setup.prompt.md`.

### Task: Auto-generated instructions

**TL;DR:** Instructions guide all agentic codebase interactions, making them more efficient and reliable. Add them early, but make sure to keep them maintained and succinct.

1. Command `Chat: Generate Workspace Instructions File`
2. Review results, probably be too long
3. Follow-up *“Compress down by half and add a mandatory development [ ] checklist (lint, build, test) to the top”*
4. Commit instructions

Result: All future requests will have basic map of the workspace.

#### Task: Background agents

**TL;DR:** Handoff tasks that don’t require handholding to background agents, which execute them isolated in git worktrees for quick parallel local iteration.

1. Chat `+` > `New Background agent`:
2. Background agent: *Add linting rules for unused vars and awaits usage; and fix any errors*
3. Review and *Apply*, then right-click delete the sessions.

Result: Agents completed adjusted the rules, fixed errors, and all edits are merged back into main. Stricter linting rules will catch any human/agent mistakes earlier.

### Instructions: Domain-specific

#### Task: Check Tailwind 4 instructions

**TL;DR**: Tailwind v4 instructions close gaps from training data and document the latest best practices.

See prompt in the footer.

- Optional, if interested how it works: Delete main text and re-run the prompt

#### Task: Check Frontend Instructions

**Why it matters**: The “no purple gradients” instructions.

Via Claude blog.

Optional: What other agentic biases could you challenge and nudge?

## 2. Design-first Frontend Vibing

Now that we engineering the repo context, let's get creative.

#### Task: Make it yours

**TL;DR**: Plan mode to start off any bigger work items iterate on the plan (2+ times!) with tweaks and clarifications.

Steps:
1. Switch to Plan mode
2. *Lets do a full redesign. Make it …*
3. Review plan

Ideas:
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

#### Task: Keep instructions updated

**Why it matters**: Keep instructions updated with major architecture/design/dependency changes.

1. Follow-up: `Add design section to copilot-instructions.md`
2. Confirm, commit and push
#### Task: A lot more redesign

**Why it matters**: Explore more and learn faster with async cloud agents; a simple prompt powered by the GitHub MCP’s coding agent tools.

- New chat in Plan mode
- `Redesign the start screen as more engaging landing page`
- Notice: Lots of variations suggested in considerations
- Run the prompt: `/cloud-explore design variations`

Created 3 PRs for cloud agent, added to sessions. While cloud agent works, continue on …
## 3. Quiz it up

#### Task: Make the quiz yours

**Why it matters:** Define your own specialized workflows with custom agents, beyond generic coding prompts.

Steps: Use a **Custom Agent** for quiz content.
- Pick *Quiz Master*
- `Update questions to …` or just `Update quiz`

Ideas:
- Skill Bingo: Instead of personal facts → workplace or technical skills.
- Personality Bingo: Preferences, quirks, fun traits.
- Secret Challenge Bingo: Each square has a quick micro-task with a person you meet.
- Team Bingo: Each square contains a department or team category.
- Classic Facts Bingo: Basic human facts (birthday month, pets, etc.).
- Work Culture Bingo: Productivity habits, meeting styles, tools.
- Tech Life Bingo: Coding languages, shortcuts, frameworks, dev memes.
- Travel Bingo: Cities lived in, countries visited, cultural traditions.
- Creative Bingo: Music, art, design tastes, creative skills.
- Micro-Challenge Bingo: Quick actions (teach a word, show a meme).
- Deep Chat Bingo: Reflective or meaningful conversation starters.
- Office Humor Bingo: Desk quirks, caffeine habits, meeting hot takes.
- Opposites Bingo: Find someone who is your opposite on specific axes.
- Fandom Bingo: Sci-fi, gaming, books, shows, niche interests.
- Lifestyle Bingo: Sleep, fitness, food, routines.
- Mystery Bingo: Guess who matches a trait and verify.
- Chaos Bingo: Surprising, absurd, unpredictable prompts.

#### Task: New Scavenger Hunt mode

**Why it matters:** Custom agents like TDD can break workflows down into with users in control.

Steps:
- Start a new Plan agent
- *Add a new Scavenger Hunt mode: same questions, but shown as simple list with checkboxes + progress meter.*
- Iterate on plan for correctness …
- Run TDD Red mode *Start*
	- Review tests being written
- After TDD Red is done, pick TDD Green
	- Review implementation and more tests passing
- Work through hand offs, red - green - refactor.

Bonus:
- Reset to Checkpoint right before “TDD Red” starts, and retry with “TDD Supervisor”

#### Extra Task: Card Deck Shuffle

Steps:
1. Agent pick: `Pixel Jam`

> New mode: Card Deck Shuffle. Every player opens the game → taps → gets a random card with a question.

Follow up:
> It should have swipe left/right (fail, success), and draw a card right when I open it

## Playwright UX Review

**TL;DR**: Combine MCP and custom workflows in an agent for . Focus on different aspects, like usability, a11y, compliance.
- Multi-agent Exploration

- Allow all Playwright tools in this Workspace
## Apply Redesign