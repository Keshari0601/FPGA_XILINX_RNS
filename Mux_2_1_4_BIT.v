`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:59 09/11/2019 
// Design Name: 
// Module Name:    Mux_2_1_4_BIT 
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
module Mux_2_1_4_BIT(
    input [3:0] a,
    input [3:0] b,
    input select,
    output [3:0] result
    );
	 wire select_inv=~select;
	 assign result[0]= select & b[0] | select_inv & a[0];
	 assign result[1]= select & b[1] | select_inv & a[1];
	 assign result[2]= select & b[2] | select_inv & a[2];
	 assign result[3]= select & b[3] | select_inv & a[3];
	 


endmodule
