`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:04:05
// Design Name: 
// Module Name: mod_16_counter_tb
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


module mod_16_counter_tb();

reg CLK,RESET;
wire [3:0]Q;

mod_16_counter dut(CLK,RESET,Q);

always begin
    #5 CLK = ~CLK;
    end

initial begin 
    
    CLK=0;
    RESET =1;
    
    #6 RESET=0;
    #35 RESET=1;
    #10 RESET=0;
    #161 RESET=1;
    #2 $finish;
    
    end
    
endmodule
