//Priority Encoder
//If multiple input bits are `1`, the encoder outputs the index of the **highest** one.

module Priority_encoder_8to3(
            output reg[2:0] data_out,//3-bit output
            input[7:0] data_in); //8-bit input
           always@(*)
            begin
            data_out=3'b000;
            if (data_in[7]==1)
                data_out=3'b111;
            else if (data_in[6]==1)
                data_out=3'b110;
            else if (data_in[5]==1)
                data_out=3'b101;
            else if(data_in[4]==1)
                data_out=3'b100;
            else if(data_in[3]==1)
                data_out=3'b011;
            else if(data_in[2]==1)
                data_out=3'b010;
             else if(data_in[1]==1)
                data_out=3'b001;
             else if(data_in[0]==1)
                data_out=3'b000;
                else 
                data_out=3'b000;
            
            
            end
endmodule
