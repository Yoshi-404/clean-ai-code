# Clean AI Code 🧼

> **Eliminate AI coding vices.** No unwanted emojis, no "Sure! Certainly!", no `// ... rest of code unchanged ...`, no trivial comments, and no over-engineering.

A universal skill and ruleset compatible with **Google Antigravity / Gemini**, **ChatGPT**, **Cursor**, **Claude**, and **GitHub Copilot**.

[🇧🇷 Versão em Português (README.md)](./README.md) | [🇯🇵 日本語版 (README.ja.md)](./README.ja.md)

---

## 🎯 Why This Project Exists

If you write software with AI assistants, you have inevitably encountered these infuriating habits:

1. **Emoji Pollution**: Emojis in git commits (`feat: add auth 🚀✨`), in comments (`// 💡 Start DB`), and in runtime logs.
2. **Conversational Sycophancy**: Starting every reply with *"Certainly! I would be delighted to help you..."* and ending with *"I hope this helps! Feel free to ask!"*.
3. **Lazy Truncation**: Dropping `// ... rest of code remains unchanged ...`, breaking clipboard copy-pasting and linters.
4. **Captain Obvious Comments**: Writing comments that merely rephrase syntax (`// increment i by 1: i++`).
5. **Premature Over-Engineering (YAGNI)**: Inventing 4 factories, singletons, and pulling in 3 npm dependencies to reverse a simple array.
6. **Abandoned Mock Data**: Leaving `// TODO: implement later` or dummy IDs in production logic.
7. **Prompt Language Mismatch**: Forcing English answers when prompted in Japanese or Portuguese.

**Clean AI Code** enforces strict, professional engineering discipline at the system level.

---

## ⚡ Quick Install (Single Command)

Clone the repository and run the installer:

```bash
git clone https://github.com/YOUR-USERNAME/clean-ai-code.git
cd clean-ai-code
./install.sh
```

Or target specific tools directly via CLI flags:

| Platform | Command |
| :--- | :--- |
| **Antigravity (Global)** | `./install.sh --antigravity-global` |
| **Antigravity (Current project)** | `./install.sh --antigravity-local` |
| **Cursor** | `./install.sh --cursor` |
| **Claude (CLAUDE.md)** | `./install.sh --claude` |
| **GitHub Copilot** | `./install.sh --copilot` |
| **All supported tools in project** | `./install.sh --all` |

> **Windows Users (PowerShell):**  
> `.\install.ps1 -All` or `.\install.ps1 -AntigravityGlobal`

---

## 📦 Manual Setup by Platform

### 1. Google Antigravity / Gemini CLI
Choose one of the following methods:

* **Option A - Global Rule (Always active everywhere):**  
  Copy [`platforms/antigravity/rule/GEMINI.md`](./platforms/antigravity/rule/GEMINI.md) to:  
  `~/.gemini/config/rules/clean-code.md`

* **Option B - On-Demand Skill or Project Rule:**  
  Copy [`platforms/antigravity/skill/clean-code`](./platforms/antigravity/skill/clean-code) to:  
  - Global: `~/.gemini/config/skills/clean-code/`  
  - Current Workspace: `.agents/skills/clean-code/`

---

### 2. ChatGPT (Web & Mobile)
1. In ChatGPT, open **Settings** > **Personalization** > **Custom Instructions**.
2. In **"How would you like ChatGPT to respond?"**, paste the contents of:  
   👉 [`platforms/chatgpt/custom_instructions.md`](./platforms/chatgpt/custom_instructions.md)
3. Save. All future chats will adhere to clean code standards.

*(For Custom GPTs or OpenAI API, use [`platforms/chatgpt/system_prompt.txt`](./platforms/chatgpt/system_prompt.txt)).*

---

### 3. Cursor
* **Modern MDC format**: Copy [`platforms/cursor/rules/clean-code.mdc`](./platforms/cursor/rules/clean-code.mdc) to `.cursor/rules/clean-code.mdc`.
* **Legacy format**: Copy [`platforms/cursor/.cursorrules`](./platforms/cursor/.cursorrules) to your project root.

---

### 4. Claude Code & Claude Projects
Copy [`platforms/claude/CLAUDE.md`](./platforms/claude/CLAUDE.md) to your project root. Claude will automatically discover and enforce it.

---

### 5. GitHub Copilot
Copy [`platforms/copilot/copilot-instructions.md`](./platforms/copilot/copilot-instructions.md) to `.github/copilot-instructions.md` in your repository.

---

## 🔍 Examples: Before vs. After

| Scenario | Default AI Habit (Vice) | Clean AI Code |
| :--- | :--- | :--- |
| **Quick question** | *"Certainly! I'd love to help you with that! Here is..."* | Immediate technical answer and clean code. |
| **Git Commit** | `feat: add user login 🚀🔥✨` | `feat(auth): implement session validation` |
| **Editing files** | `// ... rest of code unchanged ...` | Complete working code or unambiguous contextual diff. |
| **Comments** | `// increment counter: counter++` | Clean, self-documenting syntax with zero visual noise. |
| **Architecture** | Premature generic factories for a 5-line task | Idiomatic code using standard language APIs. |
| **Language matching** | Responds in English when queried in Japanese/Portuguese | Fluently responds in the user's prompt language. |

👉 See full comparisons in [`examples/before-after.md`](./examples/before-after.md)  
👉 Read the [`examples/bad-habits-hall-of-shame.md`](./examples/bad-habits-hall-of-shame.md)

---

## 📂 Repository Structure

```text
clean-ai-code/
├── CORE_RULES.md            # Source of truth (English directives)
├── README.md                # Portuguese documentation
├── README.en.md             # English documentation
├── README.ja.md             # Japanese documentation
├── install.sh               # Universal Bash installer (macOS / Linux)
├── install.ps1              # PowerShell installer (Windows)
├── platforms/
│   ├── antigravity/         # Preset for Antigravity & Gemini (Skill + Rule)
│   ├── chatgpt/             # Preset for ChatGPT (Custom Instructions & System Prompt)
│   ├── cursor/              # Preset for Cursor (.mdc and .cursorrules)
│   ├── claude/              # Preset for Claude (CLAUDE.md)
│   └── copilot/             # Preset for GitHub Copilot (.github/copilot-instructions.md)
└── examples/
    ├── before-after.md      # Before vs After comparisons
    └── bad-habits-hall-of-shame.md # AI vices catalog
```

---

## 🤝 Contributing

Notice a new AI vice in recent model updates?
1. Fork the repository.
2. Update `CORE_RULES.md` and the relevant platform files.
3. Open a Pull Request!

---

## 📄 License

Distributed under the [MIT License](./LICENSE). Free for personal and commercial use.
