`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 02:15:50
// Design Name: 
// Module Name: JK_Flipflop
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


module JK_Flipflop(input J, input K,input CLK, output reg Q, output Qbar);
 assign Qbar =~Q;
 
 always @(posedge CLK) begin
 if (J==1 && K==0) begin
 Q = 1;
 end
 else if (J==0 && K==1) begin
 Q = 0;
 end
 else if (J==1 && K==1) begin
 Q = ~Q;
 end
 end

endmodule
