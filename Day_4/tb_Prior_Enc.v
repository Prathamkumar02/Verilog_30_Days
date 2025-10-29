
// Testbench for Priority_encoder_8to3
module tb_priority_encoder_8to3;

    // Testbench signals
    reg  [7:0] data_in;
    wire [2:0] data_out;

    // Instantiate the DUT (Device Under Test)
    Priority_encoder_8to3 uut (
        .data_in(data_in),
        .data_out(data_out)
    );

    // Monitor changes in simulation
    initial begin
        $display("Time\tdata_in\t\tdata_out");
        $monitor("%0t\t%b\t%b", $time, data_in, data_out);
    end

    // Test sequence
    initial begin
        // Initialize input
        data_in = 8'b00000000; #10;

        // Test bit0
        data_in = 8'b00000001; #10;

        // Test bit3
        data_in = 8'b00001000; #10;

        // Test multiple bits (priority should select highest, bit6)
        data_in = 8'b01010000; #10;

        // Test highest bit
        data_in = 8'b10000000; #10;

        // Test no active input
        data_in = 8'b00000000; #10;

        // Test all bits active (highest priority, bit7)
        data_in = 8'b11111111; #10;

        $finish; // End simulation
    end

endmodule
