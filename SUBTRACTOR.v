`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:12 09/11/2019 
// Design Name: 
// Module Name:    SUBTRACTOR 
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
module SUBTRACTOR_4_BIT(
    input [3:0] a,
    input [3:0] b,
    output  [3:0] result
    );
	 wire [3:0] b_comp_plus;
	 Adder_4_BIT b_comp_plus_one(.a(4'b0001),.b(~b),.result(b_comp_plus));
	 Adder_4_BIT res(.a(a),.b(b_comp_plus),.result(result));

endmodule
