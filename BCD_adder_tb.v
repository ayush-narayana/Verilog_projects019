`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:07:21
// Design Name: 
// Module Name: BCD_adder_tb
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


module BCD_adder_tb();

reg [7:0]A;
reg [7:0]B;
wire [7:0] Out;
wire Carry;

BCD_adder dut(A,B,Out,Carry);

initial begin

    #5 A=8'b01100010;
       B=8'b01011001;
       
    #5 A=8'b01000011;
       B=8'b10110101;
       
    #5 A=8'b00101001;
       B=8'b01101100;
       
    #5 $finish;
          
end

endmodule
