`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 21:44:21
// Design Name: 
// Module Name: full_adder2_tb
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

module full_adder2_tb();
reg A,B,C;
wire Sum, Carry;

full_adder2 dut2(.a(A),.b(B),.c(C),.sum(Sum),.carry(Carry));

initial begin
    $monitor($time, " A=%b, B=%b, C=%b, Carry=%b, Sum=%b", A, B, C, Carry, Sum);
    
    repeat(2) begin
    #2 A=0; B=0; C=0;   
    #5 A=0; B=0; C=1;   
    #5 A=0; B=1; C=0; 
    #5 A=0; B=1; C=1;
    #5 A=1; B=0; C=0;
    #5 A=1; B=0; C=1;
    #5 A=1; B=1; C=0;
    #5 A=1; B=1; C=1;
    end
    #5 $finish;
   
    end
endmodule

