`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 19:25:29
// Design Name: 
// Module Name: Barrel_shifter
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


module Barrel_shifter(input [7:0]a,input[2:0]s,output reg [7:0]y);

always@(a,s) begin
	case(s)
		3'b000: y=a;
		3'b001: y={a[0],a[7:1]};
		3'b010: y={a[1:0],a[7:2]};
		3'b011: y={a[2:0],a[7:3]};
		3'b100: y={a[3:0],a[7:4]};
		3'b101: y={a[4:0],a[7:5]};
		3'b110: y={a[5:0],a[7:6]};
		3'b111: y={a[6:0],a[7]};
		default: y=a;
	endcase
	
	end
endmodule