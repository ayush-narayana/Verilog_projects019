`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:56:09
// Design Name: 
// Module Name: Universal_shift_register_tb
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


module Universal_shift_register_tb();

reg clk, rst;
    reg [1:0] sel;
    reg [3:0] In;
    reg new_at_left, new_at_right;
    wire [3:0]Out;

Universal_shift_register dut(clk,rst,sel,In,new_at_left,new_at_right,Out);


always begin
      #5 clk = ~clk;  
    end
initial begin
        clk=0;
        rst = 1; sel = 2'b00;
        In = 4'b0000; new_at_left = 0; new_at_right = 0;
        #10;
        
        rst = 0;
        
        //parallel load
        In = 4'b1010;
        sel = 2'b11; 
        #10;

        // Hold
        sel = 2'b00;
        #10;

        // Shift Right with new_at_left = 1
        sel = 2'b01;
        new_at_left = 1;
        #10;

        // Shift Left with new_at_right = 0
        sel = 2'b10;
        new_at_right = 0;
        #10;

        // Another Shift Left with new_at_right = 1
        new_at_right = 1;
        #10;

        // Hold again
        sel = 2'b00;
        #10;

        $finish;
    end

endmodule
