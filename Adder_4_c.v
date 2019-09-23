`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:57 09/13/2019 
// Design Name: 
// Module Name:    Adder_4_c 
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
module Adder_4_c(
	 input cin,
    input [3:0] a,
    input [3:0] b,
    output [3:0] result,
	 output cout
    );
	 wire [3:0] p;
	 assign p=a^b;
	 wire [3:0] g;
	 assign g=a&b;
	 wire [3:0] c;
	 assign c[0]=cin;
	 assign c[1]=g[0] | p[0]&cin;
	 assign c[2]=g[1] | p[1]&g[0] | p[1]&p[0]&cin;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0]  | p[2]&p[1]&p[0]&cin;
	 assign cout=g[3] | p[3]&g[2] | p[3]&p[2]&g[1]  | p[3]&p[2]&p[1]&g[0]  | p[3]&p[2]&p[1]&p[0]&cin;
	 assign result= p^c;
endmodule
