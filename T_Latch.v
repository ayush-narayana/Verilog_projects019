`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 00:43:46
// Design Name: 
// Module Name: T_Latch
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


module T_Latch(input t, input en,output reg q);

initial q=0;

always@(*) begin
    if(t==1 && en==1) begin
    q = ~q; end
    else if((t==0 && en==1)|en==0) begin 
    q = q; end
    end
endmodule
