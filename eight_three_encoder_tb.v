`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 23:29:31
// Design Name: 
// Module Name: eight_three_encoder_tb
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


module eight_three_encoder_tb();

    reg [7:0] In;
    reg En;
    wire [2:0] Out;
    eight_three_encoder dut(In,En,Out);
    initial begin
    In = 8'b00000001; En=1; #10;
    In = 8'b00000010; En=1; #10;
    In = 8'b00000100; En=1; #10;
    In = 8'b00001000; En=1; #10;
    In = 8'b00010000; En=1; #10;
    In = 8'b00100000; En=1; #10;
    In = 8'b01000000; En=1; #10;
    In = 8'b10000000; En=1; #10;
    In = 8'b10101010; En=1; #10;
    In = 8'b01010010; En=1; #10;
    In = 8'b00101000; En=1; #10;
    In = 8'b00010010; En=0; #10;
    In = 8'b01001000; En=1; #10;
    $finish;
    end
endmodule

