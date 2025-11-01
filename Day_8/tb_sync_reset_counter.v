
module tb_sync_reset_example;
reg clk;
reg reset;
reg [7:0] d;
wire [7:0] q;

// Instantiate the design under test (DUT)
sync_reset_example uut (
.clk(clk),
.reset(reset),
.d(d),
.q(q)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk; // 10 ns clock period

// Simulation
initial begin
// Initialize inputs
reset = 1;
d = 8'h00;

// Apply reset
#15 reset = 0; // Deassert reset after 15 ns

// Apply data
#10 d = 8'hAA; // Change data after reset
#10 d = 8'h55; // Change data at next clock edge
#20 $stop; // End simulation
end
endmodule
