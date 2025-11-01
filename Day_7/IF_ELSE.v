module IF_ELSE(
        input wire[1:0] control,
        output reg data
    );
    always@(*)
        begin
            if (control == 2'b00)
                data = 1'b0;
            else if (control== 2'b01)
                data=1'b1;
            else 
                data = 1'b0;
        
        end
endmodule
