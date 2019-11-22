`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 15:40:45
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input a,
    input clk,
    output reg out
    );
    //<= is non blocking assignment, it means sequential assignment and will infer flip flop in actual hardware.
    //if a reaches before clk, then output is 1, otherwise 0
    always @(posedge clk)
        if(clk)
        begin
            out<=a;
        end
endmodule
