`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:45 09/13/2019 
// Design Name: 
// Module Name:    adder_6_6_6_BITS 
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
module adder_6_6_6_BITS(
    input [5:0] a,
    input [5:0] b,
	 input cin,
    output [5:0] result,
	 output cout
    );
	 wire [5:0] p;
	 assign p=a^b;
	 wire [5:0] g;
	 assign g=a&b;
	 wire [5:0] c;
	 assign c[0]=cin;
	 assign c[1]=g[0] | p[0]&cin;
	 assign c[2]=g[1] | p[1]&g[0] | p[1]&p[0]&cin;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin; 
	 assign c[4]=g[3] | p[3]&g[2] | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&cin ; 
	 assign c[5]=g[4] | p[4]&g[3] | p[4]&p[3]&g[2] | p[4]&p[3]&p[2]&g[1] | p[4]&p[3]&p[2]&p[1]&g[0] | p[4]&p[3]&p[2]&p[1]&p[0]&cin ; 
	 assign cout=g[5] | p[5]&g[4] | p[5]&p[4]&g[3] | p[5]&p[4]&p[3]&g[2] | p[5]&p[4]&p[3]&p[2]&g[1] | p[5]&p[4]&p[3]&p[2]&p[1]&g[0] | p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin ;
	
	 assign result= p^c;
	


endmodule
