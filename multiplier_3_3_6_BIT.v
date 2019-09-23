`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:35 09/11/2019 
// Design Name: 
// Module Name:    multiplier_3_3_6_BIT 
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
module multiplier_3_3_6_BIT(
    input [2:0] a,
    input [2:0] b,
    output [5:0] result
    );
	 assign result[0]=a[0]&b[0];
	 
	 wire and_result[7:0];
	 
	 assign and_result[0]=a[1]&b[0];
	 assign and_result[1]=a[0]&b[1];
	 assign and_result[2]=a[2]&b[0];
	 assign and_result[3]=a[1]&b[1];
	 assign and_result[4]=a[0]&b[2];
	 assign and_result[5]=a[2]&b[1];
	 assign and_result[6]=a[1]&b[2];
	 assign and_result[7]=a[2]&b[2];
	 
	 wire [2:0] half_adder_sum;
	 wire [2:0] half_adder_carry;
	 wire [2:0] full_adder_sum;
	 wire [2:0] full_adder_carry;
	 
	 
	 HALF_ADDER ha1(.a(and_result[0]) ,.b(and_result[1]) ,.result(half_adder_sum[0]), .cout(half_adder_carry[0]));
	 HALF_ADDER ha2(.a(and_result[2]) ,.b(and_result[3]) ,.result(half_adder_sum[1]), .cout(half_adder_carry[1]));
	 HALF_ADDER ha3(.a(full_adder_sum[1]) ,.b(full_adder_carry[0]) ,.result(half_adder_sum[2]), .cout(half_adder_carry[2]));
	 
	 FULL_ADDER fa1(.a(half_adder_sum[1]) ,.b(and_result[4]) ,.cin(half_adder_carry[0]) ,.result(full_adder_sum[0]) ,.cout(full_adder_carry[0]));
	 FULL_ADDER fa2(.a(and_result[5]) ,.b(and_result[6]) ,.cin(half_adder_carry[1]) ,.result(full_adder_sum[1]) ,.cout(full_adder_carry[1]));
	 FULL_ADDER fa3(.a(and_result[7]) ,.b(half_adder_carry[2]) ,.cin(full_adder_carry[1]) ,.result(full_adder_sum[2]) ,.cout(full_adder_carry[2]));
	 
	 assign result[1]=half_adder_sum[0];
  	 assign result[2]=full_adder_sum[0];
  	 assign result[3]=half_adder_sum[2];
  	 assign result[4]=full_adder_sum[2];
  	 assign result[5]=full_adder_carry[2];

endmodule
