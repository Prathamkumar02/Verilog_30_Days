`timescale 1ns/1ps

module tb_IF_ELSE;

    // Testbench signals
    reg [1:0] control;
    wire data;

    // Instantiate the DUT (Device Under Test)
    IF_ELSE dut (
        .control(control),
        .data(data)
    );

    // Test stimulus
    initial begin
        $display("Time\tcontrol\tdata");
        $monitor("%0t\t%b\t%b", $time, control, data);

        // Test case 1
        control = 2'b00;
        #10;

        // Test case 2
        control = 2'b01;
        #10;

        // Test case 3
        control = 2'b10;
        #10;

        // Test case 4
        control = 2'b11;
        #10;

        $finish;
    end

endmodule
