`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 12:47:47
// Design Name: 
// Module Name: Double_Dabbler
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


module Double_Dabbler(input [7:0]bin, output reg [11:0]bcd);

reg [19:0]temp;
integer i;

always@(bin) begin

temp[19:0]= 20'd0;
temp[7:0] = bin[7:0];

    for(i=0; i<8; i=i+1) begin
    
         if(temp[15:12]>4) begin
         temp[15:12] = temp[15:12]+4'b0011; end
         
         if(temp[11:8]>4) begin
         temp[11:8] = temp[11:8]+4'b0011; end
         
         temp[19:0] = temp[19:0]<<1;
         
    end
         
    bcd[11:0] = temp[19:8];
    
    end
   
endmodule
