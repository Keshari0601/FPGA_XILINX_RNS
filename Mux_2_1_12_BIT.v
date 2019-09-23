`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:53 09/13/2019 
// Design Name: 
// Module Name:    Mux_2_1_12_BIT 
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
module Mux_2_1_12_BIT(
    input [11:0] a,
    input [11:0] b,
    input select,
    output [11:0] result
    );
	 wire select_inv=~select;
	 assign result[0]= select & b[0] | select_inv & a[0];
	 assign result[1]= select & b[1] | select_inv & a[1];
	 assign result[2]= select & b[2] | select_inv & a[2];
	 assign result[3]= select & b[3] | select_inv & a[3];
	 assign result[4]= select & b[4] | select_inv & a[4];
	 assign result[5]= select & b[5] | select_inv & a[5];
	 assign result[6]= select & b[6] | select_inv & a[6];
	 assign result[7]= select & b[7] | select_inv & a[7];
	 assign result[8]= select & b[8] | select_inv & a[8];
	 assign result[9]= select & b[9] | select_inv & a[9];
	 assign result[10]= select & b[10] | select_inv & a[10];
	 assign result[11]= select & b[11] | select_inv & a[11];
	 

endmodule
