`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:08:17 09/14/2019 
// Design Name: 
// Module Name:    Subtraction_main 
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
module Subtraction_main(
	 input [2:0] res11,
    input [2:0] res12,
    input [2:0] res13,
    input [2:0] res21,
    input [2:0] res22,
    input [2:0] res23,
    input [2:0] moduli1,
    input [2:0] moduli2,
    input [2:0] moduli3,
    output [2:0] sub1,
    output [2:0] sub2,
    output [2:0] sub3
	 
	 );
	 Sub_moduli_single a1(.res1(res11) , .res2(res21), .moduli(moduli1), .sub(sub1));
	 Sub_moduli_single a2(.res1(res12) , .res2(res22), .moduli(moduli2), .sub(sub2));
	 Sub_moduli_single a3(.res1(res13) , .res2(res23), .moduli(moduli3), .sub(sub3));


endmodule
