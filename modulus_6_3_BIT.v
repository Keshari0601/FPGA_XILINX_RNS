`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:34 09/12/2019 
// Design Name: 
// Module Name:    modulus_6_3_BIT 
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
module modulus_6_3_BIT(
    input [5:0] dividend,
    input [2:0] moduli,
    output [2:0] remainder
    );
	 
	 wire [5:0] dividend1,dividend2,dividend3,dividend4,dividend5;
	 wire mux_sel_3 , mux_sel_2, mux_sel_1,mux_sel_4,mux_sel_5;
	 wire comp1_out;
	 wire [5:0] mux_line1,mux_line2,mux_line3,mux_line4,mux_line5;
	 wire [5:0] mux_out1,mux_out2,mux_out3,mux_out4,mux_out5;
	 
	 assign mux_line1[3:0]=4'b0000;
	 assign mux_line1[5:4]=moduli[1:0];
	 
	 assign mux_line2[2:0]=3'b000;
	 assign mux_line2[5:3]=moduli[2:0];
	 
	 assign mux_line3[1:0]=2'b0;
	 assign mux_line3[4:2]=moduli[2:0];
	 assign mux_line3[5]=1'b0;
	 
	 assign mux_line4[0]=1'b0;
	 assign mux_line4[3:1]=moduli[2:0];
	 assign mux_line4[5:4]=2'b0;
	 
	 assign mux_line5[2:0]=moduli[2:0];
	 assign mux_line5[5:3]=3'b0;
	 
	 
	 assign mux_sel_1= comp1_out & ~moduli[2];
	 
	 
	 Comparator_6_BIT_GE comp1( .a(dividend), .b(mux_line1), .ge(comp1_out));
	 Comparator_6_BIT_GE comp2( .a(dividend1), .b(mux_line2), .ge(mux_sel_2));
	 Comparator_6_BIT_GE comp3( .a(dividend2), .b(mux_line3), .ge(mux_sel_3));
	 Comparator_6_BIT_GE comp4( .a(dividend3), .b(mux_line4), .ge(mux_sel_4));
	 Comparator_6_BIT_GE comp5( .a(dividend4), .b(mux_line5), .ge(mux_sel_5));
	
	 
	 Mux_2_1_6_BIT mux1(  .a(6'b000000),  .b(mux_line1), .result(mux_out1), .select(mux_sel_1));
	 Mux_2_1_6_BIT mux2(  .a(6'b000000),  .b(mux_line2), .result(mux_out2), .select(mux_sel_2));
	 Mux_2_1_6_BIT mux3(  .a(6'b000000),  .b(mux_line3), .result(mux_out3), .select(mux_sel_3));
	 Mux_2_1_6_BIT mux4(  .a(6'b000000),  .b(mux_line4), .result(mux_out4), .select(mux_sel_4));
	 Mux_2_1_6_BIT mux5(  .a(6'b000000),  .b(mux_line5), .result(mux_out5), .select(mux_sel_5));
	 
	 
	 SUBTRACTOR_6_BIT sub1(.a(dividend), .b(mux_out1), .result(dividend1));
	 SUBTRACTOR_6_BIT sub2(.a(dividend1), .b(mux_out2), .result(dividend2));
	 SUBTRACTOR_6_BIT sub3(.a(dividend2), .b(mux_out3), .result(dividend3));
	 SUBTRACTOR_6_BIT sub4(.a(dividend3), .b(mux_out4), .result(dividend4));
	 SUBTRACTOR_6_BIT sub5(.a(dividend4), .b(mux_out5), .result(dividend5));
	 
	 assign remainder=dividend5[2:0];
	 



endmodule
