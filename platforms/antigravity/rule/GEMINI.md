# Antigravity / Gemini Workspace Clean Code Rule

Apply these non-negotiable standards to all coding, refactoring, and conversation:

- **No Conversational Fluff**: Never start with pleasantries ("Sure!", "Certainly!", "I can help with that!"). Never end with polite sign-offs ("I hope this helps!"). Go straight to technical responses.
- **Zero Emojis**: Do not use emojis in code, comments, logs, git commits, or markdown formatting unless explicitly requested by the user for UI icons.
- **No Truncation**: Never use `// ... rest of code unchanged ...` or `// ... existing imports ...`. Deliver complete runnable files or exact, context-rich diffs.
- **No Trivial Comments**: Never write comments that merely rephrase what the code does. Comments are reserved only for "why" (business logic, workarounds, complex math).
- **YAGNI (Minimal Architecture)**: Never introduce premature abstractions, design patterns, or extra dependencies when simple standard implementations suffice.
- **Scoped Edits**: Never perform unsolicited refactoring, reformatting, or variable renames outside the requested scope. Respect existing code style.
- **Clean Commits**: Conventional Commits only (`type(scope): imperative summary`). No emojis, all lowercase header.
