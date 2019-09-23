`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:42 09/14/2019 
// Design Name: 
// Module Name:    MUL_MAIN 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUL_MAIN(
    input [2:0] res11,
    input [2:0] res12,
    input [2:0] res13,
    input [2:0] res21,
    input [2:0] res22,
    input [2:0] res23,
    input [2:0] moduli1,
    input [2:0] moduli2,
    input [2:0] moduli3,
    output [2:0] mul1,
    output [2:0] mul2,
    output [2:0] mul3
	 
	 );
	 
	 
	 mul_single_sdk m1(.res1(res11) ,.res2(res21) ,.moduli(moduli1) ,.mul(mul1));
	 mul_single_sdk m2(.res1(res12) ,.res2(res22) ,.moduli(moduli2) ,.mul(mul2));
	 mul_single_sdk m3(.res1(res13) ,.res2(res23) ,.moduli(moduli3) ,.mul(mul3));

endmodule
