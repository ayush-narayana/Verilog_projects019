`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 02:18:55
// Design Name: 
// Module Name: JK_Flipflop_tb
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


module JK_Flipflop_tb();

    reg J, K, CLK;
    wire Q, Qbar;

    JK_Flipflop dut(J,K,CLK,Q,Qbar);


    always begin
        #5 CLK = ~CLK; 
    end

    initial begin
        CLK=0;
         
        J = 0; K = 0; #12;

        J = 1; K = 0; #10;

        J = 0; K = 1; #10;

        J = 1; K = 1; #10;
        
        J = 0; K = 0; #10;

        $finish;
    end

endmodule
