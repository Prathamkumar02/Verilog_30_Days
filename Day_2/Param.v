
module Param # (parameter WIDTH=4)(input clk,
            rst_n,
            output reg [WIDTH-1:0] count_out
    );
    localparam MAX =(1<< WIDTH)-1;  //2^WIDTH-1
    always@(posedge clk or negedge rst_n)
    begin
    if (!rst_n)
        count_out <= 0;
    else
        if(count_out<MAX)
            count_out <=count_out+1;
        else 
            count_out <=0;
    
    
    
    end
endmodule
//Use parameter when you want a configurable module.

//Use localparam when you want a constant inside the module that should not be changed externally, often derived from a parameter.
