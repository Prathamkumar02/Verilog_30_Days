🧠 Verilog Event Regions (Full 4-Region Model)

In standard IEEE 1364 Verilog, simulation time is divided into four event regions (in order):

Order	Region Name	What Happens Here	Typical Use
1️⃣	Active	Normal procedural execution: blocking assignments (=), assign updates, $display, etc.	RTL logic
2️⃣	Inactive	Events with #0 delay; occur after active events at the same simulation time.	Slight scheduling delay
3️⃣	Nonblocking Assignment (NBA)	Updates from <= nonblocking assignments are applied here.	Sequential logic (always @(posedge clk))
4️⃣	Monitor (Postponed)	$monitor, $strobe, $finish, $stop, and value-change display updates happen here.	Observing final stable values
🔹 1. Active Region

Immediate execution of procedural code (initial, always).

Blocking assignments (=), continuous assignments, and $display occur here.

🔹 2. Inactive Region

Triggered by zero-delay events (#0), letting other processes run first.

Happens at the same simulation time as Active, but later in order.

🔹 3. NBA Region

Nonblocking assignments (<=) are evaluated in the Active region but updated in the NBA region.

Ensures all logic that depends on old values executes before the new values appear.

🔹 4. Monitor Region

Happens after all updates are done (Active, Inactive, NBA).

Used by:

$monitor — continuously prints signals when they change.

$strobe — prints signals’ final values at the end of the time step.

This guarantees you see the final stable value of signals.
