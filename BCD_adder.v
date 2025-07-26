`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 01:39:54
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder (input [7:0] a,input [7:0] b, output reg [7:0] out, output reg carry);   

    reg [3:0] s0, s1;
    reg co1,co2;
    reg [4:0] temp0,temp1;

    always @(*) begin
    
        temp0 = a[3:0] + b[3:0];
        if (temp0 > 9) begin
            s0 = temp0 + 4'b0110;
            co1 = 1;
        end else begin
            s0 = temp0;
            co1 = 0;
        end

        temp1 = a[7:4] + b[7:4] + co1;
        if (temp1 > 9) begin
            s1 = temp1 + 4'b0110;
            co2 = 1;
        end else begin
            s1 = temp1;
            co2 = 0;
        end

        out = {s0[3:0], s1[3:0]};
        carry = co2;
    end

endmodule