
module tb_disp;
    logic [3:0] my_data;
    logic en;
    initial begin 
    $display ("%t my_data=0x%h en =%b",$time,my_data,en);
    my_data =4'hB;
    $display("%t my_data = 0x%h en = %b" ,$time,my_data ,en);
    #1;
    $display("%t my_data =0x%h en=%b ",$time,my_data,en);
    end
 assign en = my_data[0];
