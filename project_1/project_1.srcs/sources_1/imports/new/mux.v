`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 15:40:45
// Design Name: 
// Module Name: mux
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


module mux(
    input a,
    input b,
    input ctr,
    output out
    );
    assign out = ctr ? b :a;
    /*wire w1,w2,w3;
    not n1 (w1,ctr);
    and a1 (w2,w1,a);
    and a2 (w3,ctr,b);
    or o1 (out,w3,w2);*/
        
endmodule
