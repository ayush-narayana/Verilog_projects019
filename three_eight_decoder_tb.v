`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 22:22:09
// Design Name: 
// Module Name: three_eight_decoder_tb
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


module three_eight_decoder_tb();
reg [2:0]In;
wire [7:0]Out;

three_eight_decoder uut(In[2:0],Out[7:0]);

initial
begin

$monitor("a=%b , out=%b",In,Out);

In=3'b000;
# 5;

In=3'b010;
# 5;

$finish;
end

endmodule

