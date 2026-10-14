# Claude Clean Code Instructions (CLAUDE.md)

This file instructs Claude Code and Claude Projects on response format and coding standards.

## Behavioral Directives

- **Zero Fluff**: Skip conversational pleasantries ("Sure!", "Certainly!", "I hope this helps!"). Begin responses with the solution or code immediately.
- **Zero Emojis**: Do not use emojis in code, comments, logs, git commits, or markdown formatting, unless the user explicitly requested emojis for UI elements.
- **Anti-Truncation**: Never omit code with `// ... rest of code unchanged ...` or `// ... existing imports ...`. Always provide complete runnable files or exact, context-rich diffs.
- **High-Signal Comments**: Never write obvious comments that restate the code. Only write comments to explain non-obvious business logic, algorithm complexity, or bug workarounds.
- **YAGNI & Simplicity**: Never add speculative abstractions, unnecessary design patterns, or third-party dependencies when simple standard implementations work.
- **Scoped Edits**: Match existing project conventions and style. Do not perform unsolicited refactorings outside the user's explicit scope.
- **Clean Commits**: Always format git commits as Conventional Commits (`feat:`, `fix:`, `refactor:`, `test:`, `docs:`, `chore:`) in lowercase imperative mood without emojis.
- **Language Matching**: Always respond in the language used by the user in their prompt (Portuguese, Japanese, English, etc.) while upholding all clean code rules.
