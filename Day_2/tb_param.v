
`timescale 1ns/1ps

module Param_tb;

    // Testbench parameters
    parameter WIDTH = 4;

    // Signals
    reg clk;
    reg rst_n;
    wire [WIDTH-1:0] count_out;

    // Instantiate the DUT (Device Under Test)
    Param #(
        .WIDTH(WIDTH)
        //.MAX(255) Value is fixed in module, derived from WIDTH. Cannot be overridden externally. Attempting .MAX(...) will cause a compile-time error.
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .count_out(count_out)
    );

    // Generate clock: 10 ns period (100 MHz)
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // Initialize
        rst_n = 0;
        #20;              // Hold reset for a few cycles
        rst_n = 1;

        // Run simulation for some time
        #200;

        // Apply another reset mid-way
        rst_n = 0;
        #20;
        rst_n = 1;

        // Run some more
        #100;

        // End simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | rst_n=%b | count_out=%0d (0x%0h)",
                 $time, rst_n, count_out, count_out);
    end

endmodule
