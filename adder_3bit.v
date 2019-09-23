`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:59 09/12/2019 
// Design Name: 
// Module Name:    adder_3bit 
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
module adder_3bit(
    input [2:0] a,
    input [2:0] b,
    output [2:0] result
    );
	 wire [2:0] p;
	 assign p=a^b;
	 wire [2:0] g;
	 assign g=a&b;
	 wire [2:0] c;
	 assign c[0]=1'b0;
	 assign c[1]=g[0];
	 assign c[2]=g[1] | p[1]&g[0] ;
	 
	 assign result= p^c;

endmodule
