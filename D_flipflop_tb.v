`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 00:38:00
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb();

reg D,Clk;
wire Q;

D_flipflop dut(D,Clk,Q);

always begin
    #5 Clk =~Clk;
    end
    
initial begin 

    Clk=0;
    D=0;
    
    #1 D = 1;
    #2 D = 0;
    #3 D = 1;
    #1 D = 0;
    #1 D = 1;
    #1 D = 0;
    #2 D = 1;
    #1 D = 0;
    #1 D = 1;
    #4 D = 0;
    #1 D = 1;
    #5 D = 0;
    #4 D = 1;
    #2 D = 0;
    
    #5 $finish;
    end
    
endmodule
