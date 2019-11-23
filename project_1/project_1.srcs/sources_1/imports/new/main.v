`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 16:43:19
// Design Name: 
// Module Name: main
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


module main(
    input a,
    input[15:0] challenge,
    output[15:0] response
    );
    wire [31:0]out1;
    main_puf mp1(a,challenge,out1);
    xor_encoding xe(out1,response);
endmodule
