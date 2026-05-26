# 🧮 Flutter Calculator App
**Version:** 1.0  
**Domain:** Mobile Application Development  
**Language:** Dart (Flutter)

---

## What This Project Does
A dark-themed **Calculator App** built with Flutter that performs real-time
arithmetic operations. It simulates a clean mobile calculator inspired by
the iOS calculator interface — handling two-operand logic, operator storage,
and result computation through an interactive button UI.

---

## Flutter & Dart Concepts Used (Great for Resume)
| Concept | Where Used |
|---|---|
| StatefulWidget | Main app state management |
| setState() | Reactive UI updates on button tap |
| MediaQuery | Responsive button sizing by screen width |
| InkWell | Tap gesture detection on buttons |
| BoxDecoration | Circular button styling with colors |
| ListView | Scrollable screen layout |
| Column & Row | Grid layout for calculator buttons |
| String & double parsing | Converting input to numbers for calculation |
| Conditional logic | Operator-based arithmetic branching |

---

## Project Structure
```
flutter_calculator/
├── lib/
│   └── main.dart     → Full app: UI + logic in one file
└── README.md         → This file
```

---

## How to Build & Run

### Prerequisites
- Flutter SDK (3.x or above)
- Dart SDK (bundled with Flutter)
- VS Code or Android Studio

### Run
```bash
flutter pub get
flutter run
```

---

## Features
1. **Addition** — Add two numbers
2. **Subtraction** — Subtract second from first
3. **Multiplication** — Multiply two numbers
4. **Division** — Divide with decimal result
5. **Decimal Support** — Input decimal numbers using `.`
6. **Clear / Reset** — Wipe all inputs and start fresh
7. **Responsive Layout** — Buttons scale to any screen size
8. **Live Display** — Input shown in real time at top of screen

---

## How the Logic Works
- Tap numbers to build the **first operand**
- Tap an operator (`+`, `-`, `*`, `/`) → first operand is stored, input resets
- Tap more numbers to build the **second operand**
- Tap `=` → result is computed and displayed
- Tap `clear` → everything resets to initial state

---

## Sample Output
```
┌─────────────────────────┐
│                   85.5  │  ← Live input display
├──────┬──────┬──────┬────┤
│  7   │  8   │  9   │ /  │
│  4   │  5   │  6   │ *  │
│  1   │  2   │  3   │ -  │
│  0   │  .   │  =   │ +  │
│         clear           │
└─────────────────────────┘
```

---

## Author Notes
This project is designed as a **Flutter portfolio project** for beginners
learning mobile development with Dart. It demonstrates stateful UI, responsive
design, and arithmetic logic — core skills relevant to any Flutter developer role.
