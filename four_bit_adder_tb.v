`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 22:15:29
// Design Name: 
// Module Name: four_bit_adder_tb
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


module four_bit_adder_tb();
reg [3:0]A;
reg [3:0]B;
wire [3:0]Sum;
wire Carry;

four_bit_adder dut(A,B,Sum,Carry);

initial begin

    #5 A=7; B=7;
    #5 A=9; B=7;
    #5 A=11; B=7;
    #5 A=11; B=9;
    #5 $finish;
    
    end
    
endmodule
