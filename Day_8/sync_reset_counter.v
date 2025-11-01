
module sync_reset_example(input wire clk, // Clock signal
input wire reset, // Synchronous reset signal
input wire [7:0] d, // Data input
output reg [7:0] q // Data output
);
always @(posedge clk) begin
if (reset)
q <= 8'b0; // Reset the output to 0 when reset is active
else
q <= d; // Update the output with the input data
end
endmodule
