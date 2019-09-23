`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:47 09/13/2019 
// Design Name: 
// Module Name:    adder_3_6_6_BITS 
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
module adder_3_6_6_BITS(
    input cin,
	 input [2:0] a,
    input [5:0] b,
    output [5:0] result,
	 output cout
    );
	 wire [5:0] p;
	 assign p[2:0]=a^b[2:0];
	 assign p[5:3]=b[5:3];
	 wire [2:0] g;
	 assign g[2:0]=a&b[2:0];
	 wire [5:0] c;
	 assign c[0]=cin;
	 assign c[1]=g[0] | p[0]&cin;
	 assign c[2]=g[1] | p[1]&g[0] | p[1]&p[0]&cin;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin; 
	 assign c[4]=p[3]&g[2] | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&cin ; 
	 assign c[5]=p[4]&p[3]&g[2] | p[4]&p[3]&p[2]&g[1] | p[4]&p[3]&p[2]&p[1]&g[0] | p[4]&p[3]&p[2]&p[1]&p[0]&cin ; 
	 assign cout=p[5]&p[4]&p[3]&g[2] | p[5]&p[4]&p[3]&p[2]&g[1] | p[5]&p[4]&p[3]&p[2]&p[1]&g[0] | p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin ;
	
	 assign result= p^c;
	 
	
endmodule
