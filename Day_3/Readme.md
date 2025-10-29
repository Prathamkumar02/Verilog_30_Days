# 🧩 Continuous Assignment in Verilog

## Overview
A **Continuous Assignment** in Verilog is used to model **combinational logic**.  
It continuously drives a value onto a **net** (typically a `wire`). Whenever any signal on the right-hand side (RHS) changes, the left-hand side (LHS) net is automatically updated.

---

## ⚙️ Syntax

```verilog
assign <net> = <expression>;
## 🔁 How Continuous Assignment Works

### 🧠 Monitoring
The simulator continuously monitors all signals on the **right-hand side (RHS)** of the expression.

### 🔄 Re-Evaluation
Whenever any of those RHS signals change, the expression is **recalculated immediately**.

### ⏱️ Scheduling (Delta Cycle)
The new value is **scheduled to drive the net after a delta cycle** —  
a simulation mechanism that represents **zero time delay** but ensures **ordered execution**.

### ⚡ Continuous Driving
The `assign` statement **continuously drives** the target signal.  
You **don’t need to reassign** it manually inside procedural blocks.

