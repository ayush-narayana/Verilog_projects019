`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 22:54:11
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();

reg [3:0]A;
reg [3:0]B;
wire A_is_greater,B_is_greater,are_equal;

comparator dut(A[3:0],B[3:0],A_is_greater,B_is_greater,are_equal);

initial begin

$monitor($time,"A>B=%b  A<B=%b  A=B=%b",A_is_greater,B_is_greater,are_equal);

#5 A=4'b1000;
   B=4'b0111;
   
#5 A=4'b1000;
   B=4'b1011;
   
#5 A=4'b1010;
   B=4'b1010;   
   
#5 $finish;

end
   
endmodule
