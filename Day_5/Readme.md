# ⚙️ Procedural Non-Blocking in Verilog

## 🧩 Overview

In **Verilog**, *procedural non-blocking assignments* (`<=`) are used inside `always` blocks to model **sequential logic** and ensure that **all right-hand side (RHS)** values are evaluated **before** any assignments are updated.  

This avoids unwanted race conditions and correctly represents clocked (synchronous) hardware behavior.

---

## 🔁 Blocking vs Non-Blocking Assignments

| Type | Symbol | Execution | Typical Use |
|------|---------|------------|--------------|
| **Blocking** | `=` | Executes immediately (statement by statement) | Combinational logic |
| **Non-Blocking** | `<=` | RHS evaluated first; updates happen *together* at the end of the time step | Sequential (clocked) logic |

---

## 🧠 Simple Example

```verilog
module non_blocking_example (
    input  wire clk,
    input  wire [3:0] a,
    input  wire [3:0] b,
    output reg  [3:0] x,
    output reg  [3:0] y
);

  always @(posedge clk) begin
    x <= a;   // Non-blocking assignment
    y <= x;   // Reads old value of x (from previous clock)
  end

endmodule

