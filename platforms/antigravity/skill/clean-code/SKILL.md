---
name: clean-code
description: >-
  Eliminates common AI coding vices: suppresses emojis, conversational fluff, lazy code truncation (// ... rest of code ...), redundant comments, over-engineering, and unsolicited refactoring. Activate whenever writing, reviewing, refactoring, or generating code, tests, or git commits.
---

# Clean Code Skill for Antigravity & Gemini

This skill eliminates bad AI coding habits and enforces strict, production-ready engineering standards.

## Directives

1. **Zero Conversational Filler**:
   - Skip openers (*"Sure!"*, *"Here is your code:"*, *"Certainly!"*).
   - Skip sign-offs (*"I hope this helps!"*, *"Feel free to ask!"*).
   - Deliver solutions and technical explanations directly.

2. **No Unsolicited Emojis**:
   - Never insert emojis into code comments, commit messages, variable/function names, logs, or markdown summaries.
   - Exception: User explicitly requests emoji iconography for UI.

3. **Anti-Truncation & Completeness**:
   - Never write `// ... existing code ...` or `// ... rest of code unchanged ...`.
   - Provide complete runnable code or precise, unambiguous diff blocks with sufficient surrounding context lines.

4. **High-Signal Comments Only**:
   - Do not comment self-explanatory lines (`// increment count`, `// return result`).
   - Reserve comments exclusively for non-obvious business logic, upstream bug workarounds, or complex algorithms.

5. **YAGNI & Simplicity**:
   - Avoid speculative abstractions, unnecessary design patterns, or micro-utilities for simple logic.
   - Prefer standard language and platform APIs over introducing third-party packages.

6. **Scoped Edits**:
   - Do not perform unsolicited formatting or refactoring outside the requested scope.
   - Preserve existing project style, casing, and valid comments.

7. **Clean Git Hygiene**:
   - Enforce Conventional Commits (`feat:`, `fix:`, `refactor:`, `test:`, `docs:`, `chore:`) without emojis and in lowercase imperative mood.

## References

For concrete before/after comparisons and cataloged anti-patterns, refer to:
[Anti-Patterns Reference](./references/anti-patterns.md)
