# Before vs. After: Real Comparisons

Here is what changes when using **Clean AI Code**.

---

### 1. The Response Style (Eliminating Conversational Fluff)

#### ❌ Before (Default AI Behavior)
> **User**: How do I validate an email with regex in TypeScript?
>
> **AI**:
> "Certainly! I would be delighted to help you validate email addresses in TypeScript! Validating user input is an essential best practice for security and data integrity.
>
> Here is a fantastic, battle-tested solution that I've crafted for you:
>
> ```typescript
> export function isValidEmail(email: string): boolean {
>   const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
>   return regex.test(email);
> }
> ```
>
> I hope this code serves you well! Please let me know if you would like me to explain how regular expressions work or if you need any further modifications. Happy coding! 😊🚀"

#### ✅ After (Clean AI Code)
> ```typescript
> const EMAIL_REGEX = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
>
> export function isValidEmail(email: string): boolean {
>   return EMAIL_REGEX.test(email);
> }
> ```
> *Note: For high-security validation, verify ownership via verification tokens or DNS MX lookup rather than overly strict regex.*

---

### 2. Git Commit Messages (No Emojis & Conventional Format)

#### ❌ Before (Default AI Behavior)
```text
git commit -m "🚀 Added user auth and shiny new dashboard features! ✨🔥🔒"
```

#### ✅ After (Clean AI Code)
```text
git commit -m "feat(auth): implement session validation and protected routes"
```

---

### 3. Code Modifications (No Lazy Placeholders)

#### ❌ Before (Default AI Behavior)
```typescript
import { useState, useEffect } from 'react';
// ... other imports ...

export const Dashboard = () => {
  // ... existing code ...

  const handleExport = () => {
    // TODO: implement export logic
  };

  // ... rest of component ...
}
```

#### ✅ After (Clean AI Code)
The AI provides either the entire working file or an unambiguous, context-rich diff:
```typescript
@@ -28,4 +28,8 @@ export const Dashboard = () => {
   const handleExport = async () => {
+    const blob = await exportMetricsCsv(dateRange);
+    downloadBlob(blob, `metrics-${dateRange}.csv`);
   };
```

---

### 4. Code Comments (High Signal Only)

#### ❌ Before (Default AI Behavior)
```typescript
// Define calculateTax function
function calculateTax(amount: number): number {
  // Check if amount is less than zero
  if (amount < 0) {
    // Return zero if invalid
    return 0;
  }
  // Multiply amount by tax rate of 15%
  const tax = amount * 0.15;
  // Return the calculated tax
  return tax;
}
```

#### ✅ After (Clean AI Code)
```typescript
const STANDARD_TAX_RATE = 0.15;

function calculateTax(amount: number): number {
  if (amount < 0) return 0;
  return amount * STANDARD_TAX_RATE;
}
```
*(No redundant comments explaining basic syntax. Clean, self-documenting code).*
