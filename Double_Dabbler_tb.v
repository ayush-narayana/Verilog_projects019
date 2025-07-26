`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 17:00:12
// Design Name: 
// Module Name: Double_Dabbler_tb
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


module Double_Dabbler_tb();

reg [7:0]Bin;
wire [11:0]Bcd;

Double_Dabbler dut(Bin,Bcd);

initial begin

    Bin = 8'b00000000;  #10;
    Bin = 8'b00001001;  #10;
    Bin = 8'b00010101;  #10;
    Bin = 8'b00101001;  #10;
    Bin = 8'b01101100;  #10;
    Bin = 8'b11111111;  #10;
    $finish;

    end
    
endmodule
