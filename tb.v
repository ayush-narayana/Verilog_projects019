`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 00:31:31
// Design Name: 
// Module Name: tb
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


module tb();
reg [3:0]A;
reg [3:0]B;
reg t;
wire [3:0]S;
wire C;

bit_add_sub dut(A,B,t,C,S);

initial 
begin
    #2 t=0;
    #6 t=1;
    #6 t=0;
    #4 t=1;
    end
    
initial begin

#5 A=6; B=6;
#5 A=8; B=6;
#5 A=10; B=6;
#5 A=10; B=8;
#5 $finish;

end

endmodule
