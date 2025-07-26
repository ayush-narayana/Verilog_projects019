`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 00:19:23
// Design Name: 
// Module Name: bit_add_sub
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


module bit_add_sub(a,b,t,c,s);

input [3:0]a;
input [3:0]b;
input t;
output [3:0]s;
output c;

assign {c,s}=(t==1)?a+b:a-b;
endmodule
