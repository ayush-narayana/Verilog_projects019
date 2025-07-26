`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 01:19:10
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
reg [3:0]p;
reg [1:0]s;
wire y;

mux dut(p,s,y);

initial begin
#5 p=5;
#8 p=9;
#9 $finish;
end

initial begin
repeat(2) begin
#4 s=2;
#3 s=0;
#2 s=3;
#2 s=1;
end
$finish;
end

endmodule
