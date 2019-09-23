`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:25 09/11/2019 
// Design Name: 
// Module Name:    Comparator_4_BIT_GE 
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
module Comparator_4_BIT_GE(
    input [3:0] a,
    input [3:0] b,
    output ge
    );
	 wire [2:0] x;
	 assign x[2]=~(a[3]^b[3]);
	 assign x[1]=~(a[2]^b[2]);
	 assign x[0]=~(a[1]^b[1]);
	 wire [3:0] comp_a;
	 assign comp_a=~a;
	 assign ge=~(comp_a[3]&b[3] | x[2]&comp_a[2]&b[2] | x[2]&x[1]&comp_a[1]&b[1] | x[2]&x[1]&x[0]&comp_a[0]&b[0]);
	 

endmodule
