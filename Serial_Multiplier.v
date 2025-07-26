`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:30:38
// Design Name: 
// Module Name: Serial_Multiplier
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


module Serial_Multiplier(input clk, input reset, input [3:0]a, input [3:0]b, output reg [7:0]p);
reg [1:0] count = 0;
reg [3:0] Multi;
always @(posedge clk or posedge reset) begin
 if(reset==1) begin
 Multi <= b;
 count <= 3'd0;
 p <= 8'd0;
 end
 
 else if(count<4) begin
 p <= (p<<1) + {Multi[3]&a[3], Multi[3]&a[2], Multi[3]&a[1], Multi[3]&a[0]};
 Multi <= Multi<<1;
 count <= count+1;
 end
 
end

endmodule
