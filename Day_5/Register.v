/*
Design a simple register in Verilog that holds an input value to understand the use of nonprocedural assignment (<=). The module should have a single input (data_in)
and an output (data_out), where the output holds the value of the input on each positive edge of the clock (clk). Usethe nonprocedural assignment operator (<=) to
assign the input value to the output inside an always block that triggers on the rising edge of the clock.
*/

module Register(input data_in,
                clk,
                output reg data_out);
         always@(posedge clk)
            begin
                data_out <= data_in;
            end
endmodule
