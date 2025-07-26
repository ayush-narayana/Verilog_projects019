`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 21:11:49
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;

    reg [3:0] data_in;
    wire [15:0] data_out;
    integer p;
    
    decoder uut (data_in,data_out);

    initial begin
    
       for(p=0;p<16;p=p+1) begin
        data_in = p;
        #10;
        end    
   
    #5 $finish;
    
    end

endmodule