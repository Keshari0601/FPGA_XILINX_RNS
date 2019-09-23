`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:54 09/12/2019 
// Design Name: 
// Module Name:    Mux_2_1_6_BIT 
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
module Mux_2_1_6_BIT(
    input [5:0] a,
    input [5:0] b,
    input select,
    output [5:0] result
    );
	 wire select_inv=~select;
	 assign result[0]= select & b[0] | select_inv & a[0];
	 assign result[1]= select & b[1] | select_inv & a[1];
	 assign result[2]= select & b[2] | select_inv & a[2];
	 assign result[3]= select & b[3] | select_inv & a[3];
	 assign result[4]= select & b[4] | select_inv & a[4];
	 assign result[5]= select & b[5] | select_inv & a[5];
	 


endmodule
