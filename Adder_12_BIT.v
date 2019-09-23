`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:22 09/13/2019 
// Design Name: 
// Module Name:    Adder_12_BIT 
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
module Adder_12_BIT(
    input [11:0] a,
    input [11:0] b,
    output [11:0] result
    );
	 
	 Adder_4_c a1(.a(a[3:0]) ,.b(b[3:0]) ,.cin(1'b0) ,.cout(cout1) ,.result(result[3:0]) );
	 Adder_4_c a2(.a(a[7:4]) ,.b(b[7:4]) ,.cin(cout1) ,.cout(cout2) ,.result(result[7:4]) );
	 Adder_4_c a3(.a(a[11:8]) ,.b(b[11:8]) ,.cin(cout2) ,.cout(cout3) ,.result(result[11:8]) );
	 
	 

endmodule
