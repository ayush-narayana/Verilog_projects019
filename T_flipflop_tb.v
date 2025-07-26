`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 01:42:54
// Design Name: 
// Module Name: T_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module T_flipflop_tb();

reg t,clk;
wire q;

T_flipflop dut(t,clk,q);

always begin
    #5 clk =~clk;
    end
    
initial begin
    t=0;
    clk=0;
    
    #6 t=1;
    #2 t=0;
    #4 t=1;
    #4 t=0;
    #2 t=1;
    #3 t=0;
    #3 t=1;
    #3 t=0;
    #3 t=1;
    #2 t=0;
    #3 t=1;
    #3 $finish;
    
    end
    
endmodule
