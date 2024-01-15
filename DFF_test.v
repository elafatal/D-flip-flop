`timescale 1ns/1ns
`include "Dflipflop.v"

module DFF_test;
  reg reset;
  reg clk;
  reg d;
  wire q;
  
  DFF dff(reset , clk , d , q);
  
  initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end
  
  initial begin

    $dumpfile("DFF_test.vcd");
    $dumpvars(0,DFF_test);

        reset= 0;
        d=1 ;
        #100;

        reset = 0;
        d=0;
        #100;

        reset = 1;
        d = 1;
        #100;

        reset = 1;
        d = 0;
        #100;
  end
endmodule