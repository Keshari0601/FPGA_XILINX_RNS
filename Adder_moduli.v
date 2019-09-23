`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:59:21 09/13/2019 
// Design Name: 
// Module Name:    Adder_moduli 
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
module Adder_moduli(
    input [2:0] res11,
    input [2:0] res12,
    input [2:0] res13,
    input [2:0] res21,
    input [2:0] res22,
    input [2:0] res23,
    input [2:0] moduli1,
    input [2:0] moduli2,
    input [2:0] moduli3,
    output [2:0] sum1,
    output [2:0] sum2,
    output [2:0] sum3
	 
	 );
	 Adder_moduli_single a1(.res1(res11) , .res2(res21), .moduli(moduli1), .sum(sum1));
	 Adder_moduli_single a2(.res1(res12) , .res2(res22), .moduli(moduli2), .sum(sum2));
	 Adder_moduli_single a3(.res1(res13) , .res2(res23), .moduli(moduli3), .sum(sum3));


endmodule
