`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:19:45
// Design Name: 
// Module Name: Johnson_counter
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


module Johnson_counter(input clk, input reset, output reg [3:0]q);

always@(posedge clk) begin
    if(reset==1) begin
    q = 4'b0000; end
    else if(reset==0) begin
    q[0] <= ~q[3];
    q[1] <= q[0];
    q[2] <= q[1];
    q[3] <= q[2]; end
   
    end

endmodule
