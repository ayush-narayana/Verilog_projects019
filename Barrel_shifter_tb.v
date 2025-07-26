`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 21:21:46
// Design Name: 
// Module Name: Barrel_shifter_tb
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


module Barrel_shifter_tb();

reg [7:0] A;
reg [2:0] S;
wire [7:0]Y;

Barrel_shifter dut(A,S,Y);

initial begin

    A= 8'b10110001; S=3'b011; #5;
    A= 8'b00101011; S=3'b100; #5;
    A= 8'b11110110; S=3'b101; #5;
    $finish;
    end
    
endmodule