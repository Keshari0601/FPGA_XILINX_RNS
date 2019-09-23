`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:52 09/11/2019 
// Design Name: 
// Module Name:    modulus_4_3_BIT 
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
module modulus_4_3_BIT(
    input [3:0] dividend,
    input [2:0] moduli,
    output [2:0] remainder
    );
	 
	 
	 
	 wire [3:0] dividend1,dividend2,dividend3;
	 wire mux_sel_3 , mux_sel_2, mux_sel_1;
	 wire comp1_out;
	 wire [3:0] mux_line1,mux_line2,mux_line3;
	 wire [3:0] mux_out1,mux_out2,mux_out3;
	 
	 assign mux_line1[1:0]=2'b00;
	 assign mux_line1[3:2]=moduli[1:0];
	 
	 assign mux_line2[0]=1'b0;
	 assign mux_line2[3:1]=moduli[2:0];
	 
	 assign mux_line3[2:0]=moduli[2:0];
	 assign mux_line3[3]=1'b0;
	 
	 assign mux_sel_1= comp1_out & ~moduli[2];
	 
	 
	 Comparator_4_BIT_GE comp1( .a(dividend), .b(mux_line1), .ge(comp1_out));
	 Comparator_4_BIT_GE comp2( .a(dividend1), .b(mux_line2), .ge(mux_sel_2));
	 Comparator_4_BIT_GE comp3( .a(dividend2), .b(mux_line3), .ge(mux_sel_3));
	 
	 
	 Mux_2_1_4_BIT mux1(  .a(4'b0000),  .b(mux_line1), .result(mux_out1), .select(mux_sel_1));
	 Mux_2_1_4_BIT mux2(  .a(4'b0000),  .b(mux_line2), .result(mux_out2), .select(mux_sel_2));
	 Mux_2_1_4_BIT mux3(  .a(4'b0000),  .b(mux_line3), .result(mux_out3), .select(mux_sel_3));
	 
	 
	 SUBTRACTOR_4_BIT sub1(.a(dividend), .b(mux_out1), .result(dividend1));
	 SUBTRACTOR_4_BIT sub2(.a(dividend1), .b(mux_out2), .result(dividend2));
	 SUBTRACTOR_4_BIT sub3(.a(dividend2), .b(mux_out3), .result(dividend3));
	 assign remainder=dividend3[2:0];
	 
	 
endmodule
