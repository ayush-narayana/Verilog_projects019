`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:55:15
// Design Name: 
// Module Name: Serial_Multiplier_tb
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


module Serial_Multiplier_tb();

reg CLK, RESET;
reg [3:0] A;
reg [3:0] B;
wire [7:0] P;

Serial_Multiplier dut(CLK,RESET,A,B,P);

always begin
     #5 CLK = ~CLK;
     end
     
initial begin
    CLK=0;
    RESET=1;
    A=9; B=11;
    
    #7 RESET = 0;
    #45 $finish;
    
    end

endmodule
