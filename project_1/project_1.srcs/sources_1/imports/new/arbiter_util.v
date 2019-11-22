`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 15:51:51
// Design Name: 
// Module Name: arbiter_util
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


module arbiter_util(
    input a,
    input b,
    input ctr,
    output out1,
    output out2
    );
    wire w1,w2,w3,w4;
    mux m1 (a,b,ctr,w1);
    mux m2 (b,a,ctr,w2);
    not n1(w3,w1);
    not n2(out1,w3);
    not n3(w4,w2);
    not n4(out2,w4);
endmodule
