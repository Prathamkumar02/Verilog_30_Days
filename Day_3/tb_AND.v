

module tb_AND();
    reg req,ack;
    wire y;
   //Instantiation
   AND uut(.req(req),.ack(ack),.y(y));
 initial
 begin
 $monitor("%t : req=%b ,ack = %b , y = %b",$time,req,ack,y);
    req=0 ; ack=0;#10;
    req=0 ; ack=1;#10;
    req=1 ; ack=0;#10;
    req=1 ; ack=1;#10;
    #100 $finish;
end
endmodule

