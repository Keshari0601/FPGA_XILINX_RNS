`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:31 09/11/2019 
// Design Name: 
// Module Name:    adder_4bit 
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
module Adder_4_BIT(
    input [3:0] a,
    input [3:0] b,
    output [3:0] result
    );
	 wire [3:0] p;
	 assign p=a^b;
	 wire [3:0] g;
	 assign g=a&b;
	 wire [3:0] c;
	 assign c[0]=1'b0;
	 assign c[1]=g[0];
	 assign c[2]=g[1] | p[1]&g[0] ;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] ;
	 
	 assign result= p^c;

endmodule
