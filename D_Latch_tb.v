`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 23:45:51
// Design Name: 
// Module Name: D_Latch_tb
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


module D_Latch_tb();

reg D,En;
wire Q;

D_Latch dut(D,En,Q);

always begin
    #5 En = ~En;
    end

initial begin

    En=0;
    D=0;
     
    #1 D=1;
    #2 D=0;
    #3 D=1;
    #1 D=0;
    #1 D=1;
    #1 D=0;
    #2 D=1;
    #1 D=0;
    #1 D=1;
    #4 D=0;
    #1 D=1;
    #5 D=0;
    #4 D=1;
    #2 D=0;
    
    #5 $finish;
    
    end
    
endmodule
