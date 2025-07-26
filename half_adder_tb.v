`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2025 23:19:34
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
  reg A, B;
  wire Sum, Carry;

  half_adder dut(.a(A), .b(B), .sum(Sum), .carry(Carry));

  initial begin
  
    $monitor( $time,"A=%b B=%b Sum=%b Carry=%b",A,B,Sum,Carry);
    
    #5 A=0; B=0;
    #5 A=0; B=1;
    #5 A=1; B=0;
    #5 A=1; B=1;
    #5 $finish;
    
  end
  
endmodule