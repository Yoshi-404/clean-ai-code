# The AI Coding Hall of Shame (Vícios Clássicos de IA)

A humorous yet deadly serious catalog of the worst habits AI assistants exhibit when writing code.

---

### 1. The Emoji Explosion 🚀✨🔥
- **Symptom**: The AI cannot write a 3-line utility function without decorating the commit message, comments, and logs with rocket ships, sparkles, and celebration cones.
- **Why it hurts**: Pollutes git history, breaks automated changelogs, triggers encoding issues in older CI runners, and looks amateurish in production repositories.

### 2. The Conversational Hostage Situation ("Sure! Certainly!")
- **Symptom**: You ask a quick question and get hit with 3 paragraphs of sycophantic praise (*"That is a truly magnificent question! I would be honored to assist you today..."*) before seeing a single line of code.
- **Why it hurts**: Wastes screen real estate, drains time, and fills your token window with useless filler.

### 3. The Lazy Vanishing Act (`// ... rest of code unchanged ...`)
- **Symptom**: You ask the AI to fix a bug in a 70-line file. It outputs 5 lines, writes `// ... existing imports ...` at the top and `// ... rest of component ...` at the bottom.
- **Why it hurts**: Breaks Copy/Paste, breaks linters, and forces you to manually stitch snippets together.

### 4. The Captain Obvious Comments
- **Symptom**:
  ```typescript
  // Set count to count plus one
  count = count + 1;
  ```
- **Why it hurts**: Adds visual clutter without providing any semantic insight into *why* the code was written.

### 5. The Architecture Astronaut (YAGNI Violation)
- **Symptom**: You ask for a function to reverse a string. The AI creates a `StringReversalStrategyFactory`, an `IStringManipulator` interface, a singleton manager, and suggests installing 3 npm packages.
- **Why it hurts**: Premature complexity, unmaintainable boilerplate, and cognitive overload.

### 6. The Phantom Dependency & Hallucinated API
- **Symptom**: Calling `array.groupByKey()` or importing a non-existent method from a popular library because it sounded plausible to the neural network.
- **Why it hurts**: Fails at compile-time or runtime, wasting developer debugging time.

### 7. The Ghost Mock Data & Broken Promises
- **Symptom**: Leaving `userId = "12345"` or `// TODO: connect to database later` right in the middle of what was supposed to be a working feature.
- **Why it hurts**: Gives a false sense of completion and slips into production undetected.
