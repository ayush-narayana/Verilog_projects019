`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 22:05:04
// Design Name: 
// Module Name: four_bit_adder
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

module full_adder(input a,input b,input c,output sum,output carry);
assign {carry,sum}=a+b+c;
endmodule

module four_bit_adder(A,B,Sum,Carry);
input [3:0]A; 
input [3:0]B;
output [3:0]Sum; 
output Carry;

wire [2:0] Co;

full_adder add1(A[0],B[0],0,Sum[0],Co[0]);
full_adder add2(A[1],B[1],Co[0],Sum[1],Co[1]);
full_adder add3(A[2],B[2],Co[1],Sum[2],Co[2]);
full_adder add4(A[3],B[3],Co[2],Sum[3],Carry);

endmodule
