`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 00:51:31
// Design Name: 
// Module Name: T_Latch_tb
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


module T_Latch_tb();

reg T,En;
wire Q;

T_Latch dut(T,En,Q);

always begin
    #5 En = ~En;
    end
   

initial begin
    En=0;
    T=0;
    
    #6 T=1;
    #2 T=0;
    #4 T=1;
    #4 T=0;
    #2 T=1;
    #3 T=0;
    #3 T=1;
    #1 T=0;
    #1 T=1;
    #1 T=0;
    #3 T=1;
    #2 T=0;
    #3 T=1;
    #3 $finish;
    
    end
    
    
endmodule
