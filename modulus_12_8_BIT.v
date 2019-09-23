`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:02 09/13/2019 
// Design Name: 
// Module Name:    modulus_12_8_BIT 
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
module modulus_12_8_BIT(
    input [11:0] dividend,
    input [7:0] moduli,
    output [7:0] remainder
    );
	 
	 wire [11:0] dividend1,dividend2,dividend3,dividend4,dividend5,dividend6,dividend7,dividend8;
	 wire mux_sel_3 , mux_sel_2, mux_sel_1,mux_sel_4,mux_sel_5,mux_sel_6,mux_sel_7,mux_sel_8;
	 wire comp1_out,comp2_out,comp3_out;
	 wire [11:0] mux_line1,mux_line2,mux_line3,mux_line4,mux_line5,mux_line6,mux_line7,mux_line8;
	 wire [11:0] mux_out1,mux_out2,mux_out3,mux_out4,mux_out5,mux_out6,mux_out7,mux_out8;
	 
	 assign mux_line1[6:0]=7'b0000000;
	 assign mux_line1[11:7]=moduli[4:0];
	 
	 assign mux_line2[5:0]=6'b000000;
	 assign mux_line2[11:6]=moduli[5:0];
	 
	 assign mux_line3[4:0]=5'b00000;
	 assign mux_line3[11:5]=moduli[6:0];
	 
	 assign mux_line4[3:0]=4'b0000;
	 assign mux_line4[11:4]=moduli[7:0];
	 
	 assign mux_line5[2:0]=3'b000;
	 assign mux_line5[10:3]=moduli;
	 assign mux_line5[11]=1'b0;
	 
	 assign mux_line6[1:0]=2'b00;
	 assign mux_line6[9:2]=moduli;
	 assign mux_line6[11:10]=2'b0;
	 
	 assign mux_line7[0]=1'b0;
	 assign mux_line7[8:1]=moduli;
	 assign mux_line7[11:9]=3'b0;
	 
	 assign mux_line8[7:0]=moduli;
	 assign mux_line8[11:8]=4'b0000;
	 
	 assign mux_sel_1= comp1_out & ~moduli[7];
	 assign mux_sel_2= comp2_out & (~moduli[7] | ~moduli[6]);
	 assign mux_sel_3= comp3_out & (~moduli[7] | ~moduli[6] | ~moduli[5]);
	 
	 
	 Comparator_12_BIT_GE comp1( .a(dividend), .b(mux_line1), .ge(comp1_out));
	 Comparator_12_BIT_GE comp2( .a(dividend1), .b(mux_line2), .ge(comp2_out));
	 Comparator_12_BIT_GE comp3( .a(dividend2), .b(mux_line3), .ge(comp3_out));
	 Comparator_12_BIT_GE comp4( .a(dividend3), .b(mux_line4), .ge(mux_sel_4));
	 Comparator_12_BIT_GE comp5( .a(dividend4), .b(mux_line5), .ge(mux_sel_5));
	 Comparator_12_BIT_GE comp6( .a(dividend5), .b(mux_line6), .ge(mux_sel_6));
	 Comparator_12_BIT_GE comp7( .a(dividend6), .b(mux_line7), .ge(mux_sel_7));
	 Comparator_12_BIT_GE comp8( .a(dividend7), .b(mux_line8), .ge(mux_sel_8));
	
	 wire [11:0] zero;
	 assign zero=12'b000000000000;
	 Mux_2_1_12_BIT mux1(  .a(zero),  .b(mux_line1), .result(mux_out1), .select(mux_sel_1));
	 Mux_2_1_12_BIT mux2(  .a(zero),  .b(mux_line2), .result(mux_out2), .select(mux_sel_2));
	 Mux_2_1_12_BIT mux3(  .a(zero),  .b(mux_line3), .result(mux_out3), .select(mux_sel_3));
	 Mux_2_1_12_BIT mux4(  .a(zero),  .b(mux_line4), .result(mux_out4), .select(mux_sel_4));
	 Mux_2_1_12_BIT mux5(  .a(zero),  .b(mux_line5), .result(mux_out5), .select(mux_sel_5));
	 Mux_2_1_12_BIT mux6(  .a(zero),  .b(mux_line6), .result(mux_out6), .select(mux_sel_6));
	 Mux_2_1_12_BIT mux7(  .a(zero),  .b(mux_line7), .result(mux_out7), .select(mux_sel_7));
	 Mux_2_1_12_BIT mux8(  .a(zero),  .b(mux_line8), .result(mux_out8), .select(mux_sel_8));
	 
	 
	 SUBTRACTOR_12_BIT sub1(.a(dividend), .b(mux_out1), .result(dividend1));
	 SUBTRACTOR_12_BIT sub2(.a(dividend1), .b(mux_out2), .result(dividend2));
	 SUBTRACTOR_12_BIT sub3(.a(dividend2), .b(mux_out3), .result(dividend3));
	 SUBTRACTOR_12_BIT sub4(.a(dividend3), .b(mux_out4), .result(dividend4));
	 SUBTRACTOR_12_BIT sub5(.a(dividend4), .b(mux_out5), .result(dividend5));
	 SUBTRACTOR_12_BIT sub6(.a(dividend5), .b(mux_out6), .result(dividend6));
	 SUBTRACTOR_12_BIT sub7(.a(dividend6), .b(mux_out7), .result(dividend7));
	 SUBTRACTOR_12_BIT sub8(.a(dividend7), .b(mux_out8), .result(dividend8));
	 
	 
	 
	 assign remainder=dividend8[7:0];


endmodule
