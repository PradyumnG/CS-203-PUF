`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:57:49
// Design Name: 
// Module Name: main_puf
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


module main_puf(
    input a,
    input[15:0] challenge,
    output[31:0] response
    );
    genvar i;
    reg clk;
    reg[31:0] cnt;
    initial begin
        clk=1;
        cnt=0;
    end
    always @(posedge a)begin
        if(cnt==12500)begin
            cnt=0;
            clk=~clk;
        end
        cnt=cnt+1;
    end
    reg u,v;
    initial begin
        u=0;
        v=1;
    end
    for(i=0;i<32;i=i+1)begin
        arbiter a1(clk,clk,challenge,response[i]);
    end
endmodule
