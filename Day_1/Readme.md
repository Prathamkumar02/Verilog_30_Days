🔁 Verilog always Block

The always block in Verilog is used to describe hardware behavior that continuously executes in simulation.
It allows you to model both combinational and sequential logic depending on how it’s written and triggered.

⚙️ Types of always Blocks

There are three main types of always blocks in Verilog:

🧩 1. Combinational always Block

Used for combinational logic (no memory elements).
Triggered automatically whenever any signal in the block changes.

// Example: 4-bit ALU
always @(*) begin
    case (sel)
        2'b00: out = a + b;
        2'b01: out = a - b;
        2'b10: out = a & b;
        2'b11: out = a | b;
        default: out = 4'b0000;
    endcase
end


Notes:

Use always @(*) — it automatically includes all inputs in the sensitivity list.

Use blocking assignments (=).

Models pure combinational logic.

No clock or edge triggers.

⏱️ 2. Sequential (Clocked) always Block

Used for flip-flops, registers, and sequential circuits.
Triggered on a clock edge (and optionally a reset).

// Example: D Flip-Flop with async reset
always @(posedge clk or negedge reset) begin
    if (!reset)
        q <= 0;
    else
        q <= d;
end


Notes:

Triggered on clock edges (posedge or negedge).

Use non-blocking assignments (<=).

Models sequential logic (storage).

Commonly includes reset or enable conditions.

🕓 3. Latch (Level-Sensitive) always Block

Used for latches, which are level-sensitive (not edge-triggered).

// Example: D Latch
always @(enable or d) begin
    if (enable)
        q = d;
end


Notes:

Triggered when enable or d changes.

Use blocking assignments (=).

If the if or case statements don’t assign outputs in all branches,
a latch is inferred.

Latches are rarely used in RTL — often avoided unless intentionally designed.
