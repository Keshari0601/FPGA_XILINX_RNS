`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:58 09/12/2019 
// Design Name: 
// Module Name:    rns_inverse_6_3_BIT 
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
module rns_inverse_6_3_BIT(
    input [5:0] product,
    input [2:0] moduli,
    output [2:0] inverse
    );
	 wire [2:0] mod;
	 wire [3:0] mod_into_2,mod_into_3,mod_into_4;
	 modulus_6_3_BIT main_mod(.dividend(product), .moduli(moduli), .remainder(mod));
	 
	 wire encoder_a,encoder_sel2,encoder_sel1,encoder_sel0;
	 
	 encoder_3_data_4_3_BITS encoder(.data(mod), .a(encoder_a), .sel2(encoder_sel2), .sel1(encoder_sel1), .sel0(encoder_sel0), .output_data(inverse)  );
	 
	 wire [2:0] mod_plus_1;
	 adder_3bit adder(.a(mod) ,.b(3'b001), .result(mod_plus_1));
	 assign encoder_a= (mod[0]&~mod[1]&~mod[2]) | ((mod_plus_1[0]^mod[0])&(mod_plus_1[1]^mod[1])&(mod_plus_1[2]^mod[2]))  ;
	 
	 wire [3:0] add_2_4, add_2_4_3;
	 
	 
	 assign add_2_4[2:0]=mod;
	 assign add_2_4[3]=1'b0;
	 
	 Adder_4_BIT add_2(.a(add_2_4), .b(add_2_4), .result(mod_into_2));
	 Adder_4_BIT add_3(.a(mod_into_2), .b(add_2_4), .result(mod_into_3));
	 Adder_4_BIT add_4(.a(mod_into_3), .b(add_2_4), .result(mod_into_4));
	 
	 wire [2:0] rem_1, rem_2, rem_3;
	 
	 
	 modulus_4_3_BIT m1(.dividend(mod_into_2), .moduli(moduli), .remainder(rem_1));
	 modulus_4_3_BIT m2(.dividend(mod_into_3), .moduli(moduli), .remainder(rem_2));
	 modulus_4_3_BIT m3(.dividend(mod_into_4), .moduli(moduli), .remainder(rem_3));
	 
	 
	 assign encoder_sel2=rem_1[0]&~rem_1[1]&~rem_1[2];
	 assign encoder_sel1=rem_2[0]&~rem_2[1]&~rem_2[2];
	 assign encoder_sel0=rem_3[0]&~rem_3[1]&~rem_3[2];
	 
	 
	 
	 
	
endmodule
