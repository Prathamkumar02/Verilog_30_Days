module tb_demux();
reg data_in;
reg[2:0] sel;
wire[7:0] data_out;
Demux uut(data_out,sel,data_in);
initial
    begin
    data_in=1;sel=3'b000;#10
    data_in=1;sel=3'b001;#10
    data_in=1;sel=3'b010;#10
    data_in=1;sel=3'b011;#10
    data_in=1;sel=3'b100;#10
    data_in=1;sel=3'b101;#10
    data_in=1;sel=3'b110;#10
    data_in=1;sel=3'b111;#10
#150    $finish;
    end
endmodule
