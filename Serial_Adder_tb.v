`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:21:43
// Design Name: 
// Module Name: Serial_Adder_tb
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


module Serial_Adder_tb();

reg CLK,RESET,X,Y;
wire Z;

Serial_Adder dut(CLK,RESET,X,Y,Z);

always begin 
    #5 CLK = ~CLK;
    end
    
initial begin
    X=0; Y=0;
    CLK=0; RESET=1;
    
    #12;

    RESET = 0;
    X = 0; Y = 0; #10;
   
    X = 1; Y = 0; #10;
   
    X = 1; Y = 1; #10;
   
    X = 0; Y = 1; #10;
  
    X = 1; Y = 1; #10;
   
    X = 0; Y = 0; #10;

    $finish;
    
  end
endmodule
