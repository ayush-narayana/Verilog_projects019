`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 14:22:45
// Design Name: 
// Module Name: half_adder_tb2
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


module half_adder_tb2();

reg A,B;
wire Sum, Carry;

half_adder dut2(.a(A),.b(B),.sum(Sum),.carry(Carry));

integer i;

initial begin
    
    for(i=0;i<4;i=i+1)
    begin
    #5 {A,B}=i; 
    $display($time,"  A=%b, B=%b, Sum=%b, Carry=%b",A,B,Sum,Carry);
    end
    
    #5 $finish;

end

endmodule
