`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:53 09/13/2019 
// Design Name: 
// Module Name:    multiplier_6_3_9_BIT 
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
module multiplier_6_3_9_BIT(
    	input [5:0] number1,
		input [2:0] number2,
		output [8:0] result
    );
	 wire [5:0]  product_121,product_122;
	 wire [8:0] p1;
	 
	 multiplier_3_3_6_BIT m121(.a(number1[2:0]), .b(number2), .result(product_121));
	 multiplier_3_3_6_BIT m122(.a(number1[5:3]), .b(number2), .result(product_122));
 
	 assign p1[2:0]=product_121[2:0];
	 wire c1_out;
	 adder_3_6_6_BITS	a1(.a(product_121[5:3]), .b(product_122), .result(p1[8:3]), .cin(1'b0), .cout(c1_out));
	 assign result=p1;

endmodule
