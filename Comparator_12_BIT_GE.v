`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:08 09/13/2019 
// Design Name: 
// Module Name:    Comparator_12_BIT_GE 
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
module Comparator_12_BIT_GE(
    input [11:0] a,
    input [11:0] b,
    output ge
    );
	 wire [10:0] x;
	 
	 assign x[10]=~(a[11]^b[11]);
	 assign x[9]=~(a[10]^b[10]);
	 assign x[8]=~(a[9]^b[9]);
	 assign x[7]=~(a[8]^b[8]);
	 assign x[6]=~(a[7]^b[7]);
	 assign x[5]=~(a[6]^b[6]);
	 
	 assign x[4]=~(a[5]^b[5]);
	 assign x[3]=~(a[4]^b[4]);
	 assign x[2]=~(a[3]^b[3]);
	 assign x[1]=~(a[2]^b[2]);
	 assign x[0]=~(a[1]^b[1]);
	 wire [11:0] comp_a;
	 assign comp_a=~a;
	 assign ge=~( comp_a[11]&b[11] | x[10]&comp_a[10]&b[10] | x[10]&x[9]&comp_a[9]&b[9] | x[10]&x[9]&x[8]&comp_a[8]&b[8] | x[10]&x[9]&x[8]&x[7]&comp_a[7]&b[7] | x[10]&x[9]&x[8]&x[7]&x[6]&comp_a[6]&b[6] | x[10]&x[9]&x[8]&x[7]&x[6]&x[5]&(comp_a[5]&b[5] | x[4]&comp_a[4]&b[4] | x[4]&x[3]&comp_a[3]&b[3] | x[4]&x[3]&x[2]&comp_a[2]&b[2] | x[4]&x[3]&x[2]&x[1]&comp_a[1]&b[1] | x[4]&x[3]&x[2]&x[1]&x[0]&comp_a[0]&b[0]));
	

endmodule
