`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:42 09/12/2019 
// Design Name: 
// Module Name:    Comparator_6_BIT_GE 
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
module Comparator_6_BIT_GE(
    input [5:0] a,
    input [5:0] b,
    output ge
    );
	 wire [4:0] x;
	 
	 assign x[4]=~(a[5]^b[5]);
	 assign x[3]=~(a[4]^b[4]);
	 assign x[2]=~(a[3]^b[3]);
	 assign x[1]=~(a[2]^b[2]);
	 assign x[0]=~(a[1]^b[1]);
	 wire [5:0] comp_a;
	 assign comp_a=~a;
	 assign ge=~(comp_a[5]&b[5] | x[4]&comp_a[4]&b[4] | x[4]&x[3]&comp_a[3]&b[3] | x[4]&x[3]&x[2]&comp_a[2]&b[2] | x[4]&x[3]&x[2]&x[1]&comp_a[1]&b[1] | x[4]&x[3]&x[2]&x[1]&x[0]&comp_a[0]&b[0]);
	

endmodule
