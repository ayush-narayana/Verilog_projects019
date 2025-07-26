`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 22:49:42
// Design Name: 
// Module Name: comparator
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


module comparator(input [3:0]a, input [3:0]b, output a_is_greater, output b_is_greater, output are_equal);
assign are_equal = (a==b)? 1:0;
assign a_is_greater = (a>b)?1:0;
assign b_is_greater = (a<b)? 1:0;
endmodule
