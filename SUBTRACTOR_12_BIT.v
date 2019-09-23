`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:44 09/13/2019 
// Design Name: 
// Module Name:    SUBTRACTOR_12_BIT 
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
module SUBTRACTOR_12_BIT(
	 input [11:0] a,
    input [11:0] b,
    output  [11:0] result
    );
	 wire [11:0] b_comp_plus;
	 Adder_12_BIT b_comp_plus_one(.a(12'b000000000001),.b(~b),.result(b_comp_plus));
	 Adder_12_BIT res(.a(a),.b(b_comp_plus),.result(result));


endmodule
