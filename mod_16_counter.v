`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 10:59:49
// Design Name: 
// Module Name: mod_16_counter
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


module mod_16_counter( input clk, input reset, output reg [3:0]q);

initial q=0;

always@(posedge clk)
begin 

    if(reset==1) begin
    q = 4'b0000;
    end
    else if(reset==0) begin
    q = q+1;
    end
    
end

endmodule
