/*Design a 3:8 Demultiplexer in Verilog using the
behavioral modeling style. The module should
have a 1-bit input (data_in), a 3-bit select line (sel),
and 8 output lines (data_out[7:0]). Use an always
block to implement the logic, ensuring that only
one output is set to the value of data_in based on
the select lines, while all other outputs are set to
zero.*/

module Demux(output reg[7:0] data_out,
            input [2:0] sel,
            input data_in);
         always@(*)
         begin
            data_out = 8'b00000000;
        case(sel)
            3'b000 : data_out[0]=data_in;
            3'b001 : data_out[1]=data_in;
            3'b010 : data_out[2]=data_in;
            3'b011 : data_out[3]=data_in;
            3'b100 : data_out[4]=data_in;
            3'b101 : data_out[5]=data_in;
            3'b110 : data_out[6]=data_in;
            3'b111 : data_out[7]=data_in;
        endcase
        
        
        
        end
endmodule
