`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:48:34
// Design Name: 
// Module Name: Universal_shift_register
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


module Universal_shift_register(input clk, input reset,input [1:0]sel, input [3:0]In,
                                input new_at_left,input new_at_right,output reg [3:0]Out);

always @(posedge clk or posedge reset) begin
    if (reset)
        Out <= 4'b0000;
    else begin
        case (sel)
            2'b00: Out <= Out;                                      // Hold
            2'b01: Out <= {new_at_left, Out[3:1]};               // Shift Right
            2'b10: Out <= {Out[2:0], new_at_right};              // Shift Left
            2'b11: Out <= In;                                       // Parallel Load
            default: Out = Out;
        endcase
    end
end
endmodule
