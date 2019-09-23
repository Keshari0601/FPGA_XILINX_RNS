`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:55 09/13/2019 
// Design Name: 
// Module Name:    rns_to_binary 
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
module rns_to_binary(
    input [2:0] residue1,
    input [2:0] residue2,
    input [2:0] residue3,
    input [2:0] moduli1,
    input [2:0] moduli2,
    input [2:0] moduli3,
    output [6:0] binary
    );
	 
	 wire [5:0] multi1,multi2,multi3;
	 multiplier_3_3_6_BIT m1(.a(moduli2), .b(moduli3), .result(multi1));
	 multiplier_3_3_6_BIT m2(.a(moduli1), .b(moduli3), .result(multi2));
	 multiplier_3_3_6_BIT m3(.a(moduli1), .b(moduli2), .result(multi3));
	 
	 wire [2:0] inv1,inv2,inv3;
	 rns_inverse_6_3_BIT i1(.product(multi1), .moduli(moduli1), .inverse(inv1));
	 rns_inverse_6_3_BIT i2(.product(multi2), .moduli(moduli2), .inverse(inv2));
	 rns_inverse_6_3_BIT i3(.product(multi3), .moduli(moduli3), .inverse(inv3));
	 
	 wire [11:0] p1,p2,p3;
	
	 multiplier_6_3_3_12_BITS mul1(.number1(multi1), .number2(residue1), .number3(inv1), .result(p1) );
	 multiplier_6_3_3_12_BITS mul2(.number1(multi2), .number2(residue2), .number3(inv2), .result(p2) );
	 multiplier_6_3_3_12_BITS mul3(.number1(multi3), .number2(residue3), .number3(inv3), .result(p3) );
	 
	 
	 wire [11:0] sum1, sum_final;
	

		
	 adder_12_12_BIT a1(.a(p1), .b(p2), .result(sum1));
	 adder_12_12_BIT a2(.a(sum1), .b(p3), .result(sum_final));
	 
	 wire [8:0] final_moduli;
		
	 multiplier_6_3_9_BIT final_mul(.number1(multi1), .number2(moduli1), .result(final_moduli) );
	
	
	
	 wire [7:0] final_remainder;
	 modulus_12_8_BIT mfinal(.dividend(sum_final), .moduli(final_moduli[7:0]), .remainder(final_remainder));
	 assign binary=final_remainder[6:0];
	 
	 
	 
	 


endmodule
