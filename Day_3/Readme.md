# 🧩 Continuous Assignment in Verilog

## Overview
A **Continuous Assignment** in Verilog is used to model **combinational logic**.  
It continuously drives a value onto a **net** (typically a `wire`). Whenever any signal on the right-hand side (RHS) changes, the left-hand side (LHS) net is automatically updated.

---

## ⚙️ Syntax

```verilog
assign <net> = <expression>;
## 🔁 How Continuous Assignment Works

Monitoring
The simulator continuously monitors all signals (RHS) in the expression.

Re-Evaluation
If any of those signals change, the expression is recalculated immediately.

Scheduling (Delta Cycle)
The new value is scheduled to drive the net after a delta cycle (zero simulation time but ordered execution).

Continuous Driving
The assign statement continuously drives the signal — you don’t need to reassign it manually.
