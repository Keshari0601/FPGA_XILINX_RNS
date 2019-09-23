`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:05 09/12/2019 
// Design Name: 
// Module Name:    SUBTRACTOR_6_BIT 
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
module SUBTRACTOR_6_BIT(
    input [5:0] a,
    input [5:0] b,
    output  [5:0] result
    );
	 wire [5:0] b_comp_plus;
	 Adder_6_BIT b_comp_plus_one(.a(6'b000001),.b(~b),.result(b_comp_plus));
	 Adder_6_BIT res(.a(a),.b(b_comp_plus),.result(result));


endmodule
