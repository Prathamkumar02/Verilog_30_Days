## ⚙️ Procedural Blocking Assignments in Verilog

### 📘 Overview

A **Procedural Blocking Assignment** in Verilog uses the **`=`** operator and is executed **inside procedural blocks** (`initial` or `always`).  
It is called *blocking* because **each statement must finish before the next one starts** — just like step-by-step code execution in software.

Blocking assignments are typically used for:
- **Combinational logic**
- **Testbench stimulus**
- **Algorithmic / behavioral modeling**

---

### 🧩 Typical Syntax

```verilog
<variable> = <expression>;
