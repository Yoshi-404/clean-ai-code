# AI Coding Anti-Patterns & Vices Catalog

This reference lists the most frequent AI coding vices and provides explicit negative and positive patterns.

---

## 1. Unsolicited Emojis

### Anti-Pattern (Vício de IA)
```typescript
// 🚀 Initialize database connection
await db.connect();

// ✅ Log successful initialization
console.log("🔥 Server is running on port 3000! 🚀");
```

### Clean Standard
```typescript
await db.connect();
console.log("Server listening on port 3000");
```

---

## 2. Lazy Code Truncation

### Anti-Pattern (Vício de IA)
```typescript
import { useState } from 'react';
// ... rest of existing imports ...

export function UserProfile() {
  // ... existing state variables ...

  const handleUpdate = () => {
    // TODO: implement logic here
  };

  // ... rest of component ...
}
```

### Clean Standard
Always provide either the complete runnable component/file OR an unambiguous, targeted contextual diff:
```typescript
@@ -14,3 +14,5 @@ export function UserProfile() {
   const handleUpdate = async () => {
+    await api.users.update(userId, { name });
+    notify("Profile updated successfully");
   };
```

---

## 3. Trivial & Obvious Comments

### Anti-Pattern (Vício de IA)
```typescript
// Define user interface
interface User {
  // User name string
  name: string;
  // User age number
  age: number;
}

// Function to calculate total price
function calculateTotal(items: Item[]): number {
  // Variable to store sum
  let sum = 0;
  // Loop through all items
  for (const item of items) {
    // Add item price to sum
    sum += item.price;
  }
  // Return the calculated sum
  return sum;
}
```

### Clean Standard
```typescript
interface User {
  name: string;
  age: number;
}

function calculateTotal(items: Item[]): number {
  return items.reduce((total, item) => total + item.price, 0);
}
```

---

## 4. Premature Abstraction & Over-Engineering (YAGNI)

### Anti-Pattern (Vício de IA)
Creating generic factories, singleton managers, and custom caching interfaces for a simple 5-item lookup.

### Clean Standard
Write the simplest code that solves the problem robustly. Refactor only when real requirements dictate complexity.

---

## 5. Conversational Chitchat & Sycophancy

### Anti-Pattern (Vício de IA)
> "Certainly! That is an excellent architectural choice. Here is the refactored code you requested below. I have carefully optimized every single function for peak performance!
>
> `...code...`
>
> I really hope this helps you achieve your goals! Please let me know if you need any adjustments or have any further questions! Happy coding!"

### Clean Standard
> Refactored `calculateDiscount` to use the strategy pattern requested:
>
> `...code...`
>
> Key change: isolated tax calculation to `TaxPolicy` to avoid hardcoding regional rates.
