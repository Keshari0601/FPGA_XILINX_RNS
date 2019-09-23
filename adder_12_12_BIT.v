`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:52 09/13/2019 
// Design Name: 
// Module Name:    adder_12_12_BIT 
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
module adder_12_12_BIT(
		input [11:0] a,
		input [11:0] b,
		output [11:0] result
		);
		
		
		wire ctemp,ctemp2;
		adder_6_6_6_BITS a1(.a(a[5:0]), .b(b[5:0]), .result(result[5:0]), .cin(1'b0) ,.cout(ctemp));
	   adder_6_6_6_BITS a2(.a(a[11:6]), .b(b[11:6]), .result(result[11:6]), .cin(ctemp) ,.cout(ctemp2));
		
		
		
	 
	 


endmodule
