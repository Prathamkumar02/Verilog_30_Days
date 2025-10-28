# Verilog: Parameter vs Localparam

In Verilog, **`parameter`** and **`localparam`** are used to define constants, but they differ in **modifiability** and **use cases**.

---

## Parameter

- **Definition:** A constant whose value can be overridden during module instantiation or compilation.  
- **Use case:** Configurable module properties such as bit-width, delay, or array size.  
- **Key points:**  
  - Provides flexibility for module design.  
  - Can be computed from other parameters but still overrideable.  

---

## Localparam

- **Definition:** A constant whose value is fixed inside the module and **cannot be overridden** externally.  
- **Use case:** Internal constants derived from parameters that must remain immutable.  
- **Key points:**  
  - Ensures internal consistency and safety.  
  - Commonly used for derived values, e.g., `MAX = (1 << WIDTH) - 1`.  
  - Cannot be changed during instantiation or compilation.  

---

## Summary Comparison

| Feature                 | `parameter`               | `localparam`                   |
|-------------------------|--------------------------|--------------------------------|
| Overridable externally  | ✅ Yes                   | ❌ No                          |
| Typical use case        | Module configurability    | Internal constants/derived values |
| Computed from parameters | ⚠ Possible              | ✅ Common                      |
| Immutable (unchangeable) | ❌ No                    | ✅ Yes                         |

**Takeaway:**  
- Use `parameter` for flexible and configurable modules.  
- Use `localparam` for internal constants that should not be changed externally.

