module DFF(reset,clk,d,q);
input clk,d,reset;
output reg q;
    always @(posedge clk)
    begin
    if (reset==1) 
    begin
        q = 0;
    end

    if (reset==0 && d==0)
    begin
        q= 0;
    end

    else if (reset==0 && d == 1)
    begin
        q = 1;
    end
    end 
    
endmodule

