`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 20:48:43
// Design Name: 
// Module Name: decoder
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


module decoder(input [3:0]data_in, output [15:0]data_out);

genvar i;
generate
    for(i=0;i<16;i=i+1)
    begin
    assign data_out[i]=(i==data_in)?1:0;
    end
endgenerate

endmodule
