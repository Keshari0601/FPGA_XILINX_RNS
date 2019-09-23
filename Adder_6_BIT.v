`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:46 09/12/2019 
// Design Name: 
// Module Name:    Adder_6_BIT 
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
module Adder_6_BIT(
    input [5:0] a,
    input [5:0] b,
    output [5:0] result
    );
	 wire [5:0] p;
	 assign p=a^b;
	 wire [5:0] g;
	 assign g=a&b;
	 wire [5:0] c;
	 assign c[0]=1'b0;
	 assign c[1]=g[0];
	 assign c[2]=g[1] | p[1]&g[0] ;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] ;
	 assign c[4]=g[3] | p[3]&g[2] | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0];
	 assign c[5]=g[4] | p[4]&g[3] | p[4]&p[3]&g[2] | p[4]&p[3]&p[2]&g[1] | p[4]&p[3]&p[2]&p[1]&g[0] ;
	 
	 assign result= p^c;
endmodule
