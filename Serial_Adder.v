`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 12:03:17
// Design Name: 
// Module Name: Serial_Adder
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


module Serial_Adder(input clk, input reset, input x, input y, output reg z);
reg c = 0;
initial z=0;

always @(posedge clk or posedge reset) begin
 if (reset==1) begin
 {c,z}=2'b00;
 end
 else begin
 {c,z}=x+y+c;
 end
end

endmodule
