# Verilog `if-else` Statement – Theory

In Verilog, the `if-else` statement is used for **decision making** inside procedural blocks. It allows the designer to **execute different blocks of code** depending on whether a **condition is true or false**.

---

## 1. Purpose

- Implement **conditional logic** in hardware designs.  
- Useful for modeling **combinational** and **sequential logic**.  

---

## 2. Key Points

1. **Procedural Use Only**  
   - `if-else` can only be used inside `always` or `initial` blocks.  
   - Cannot be used in continuous assignments (`assign`).  

2. **Condition**  
   - Must evaluate to a **1-bit logic value** (`0` = false, `1` = true)
