`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:00:23
// Design Name: 
// Module Name: xor_encoding
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


module xor_encoding(
    input [31:0] r,
    output [7:0] o
    );
    genvar i;
    generate for(i=0;i<32;i=i+4)begin
        xor x1(o[i/4],r[i],r[i+1],r[i+2],r[i+3]);
    end
    endgenerate
endmodule
