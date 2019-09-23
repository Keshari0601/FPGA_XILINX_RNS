`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:01 09/13/2019 
// Design Name: 
// Module Name:    multiplier_6_3_3_12_BITS 
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
module multiplier_6_3_3_12_BITS(
		input [5:0] number1,
		input [2:0] number2,
		input [2:0] number3,
		output [11:0] result
    );
	 wire [5:0]  product_121,product_122,product_1231,product_1232,product_1233;
	 wire [8:0] p1;
	 
	 multiplier_3_3_6_BIT m121(.a(number1[2:0]), .b(number2), .result(product_121));
	 multiplier_3_3_6_BIT m122(.a(number1[5:3]), .b(number2), .result(product_122));
	 multiplier_3_3_6_BIT m1231(.a(p1[2:0]), .b(number3), .result(product_1231));
	 multiplier_3_3_6_BIT m1232(.a(p1[5:3]), .b(number3), .result(product_1232));
	 multiplier_3_3_6_BIT m1233(.a(p1[8:6]), .b(number3), .result(product_1233));
	 
	 assign p1[2:0]=product_121[2:0];
	 wire c1_out,c2_out,c3_out;
	 adder_3_6_6_BITS	a1(.a(product_121[5:3]), .b(product_122), .result(p1[8:3]), .cin(1'b0), .cout(c1_out));
	 wire [5:0] temp;
	 assign result[2:0]=product_1231[2:0];
	 
	 assign result[5:3]=temp[2:0];
	 adder_3_6_6_BITS	a2(.a(product_1231[5:3]), .b(product_1232), .result(temp), .cin(c1_out), .cout(c2_out));
	 adder_3_6_6_BITS	a3(.a(temp[5:3]), .b(product_1233), .result(result[11:6]), .cin(c2_out), .cout(c3_out));
	 

endmodule
