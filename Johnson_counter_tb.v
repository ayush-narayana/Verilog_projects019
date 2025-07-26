`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:23:03
// Design Name: 
// Module Name: Johnson_counter_tb
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


module Johnson_counter_tb();

reg Clk;
reg Reset;
wire [3:0]Q;

Johnson_counter dut(Clk,Reset,Q);

always begin
    #5 Clk = ~Clk;
    end

initial begin
    Clk=0;
    Reset=1;
    
    #6 Reset=0;
    #100 Reset=1;
    #11 Reset =0;
    #88 $finish;
    
    end
    
endmodule
