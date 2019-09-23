`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:04 09/14/2019 
// Design Name: 
// Module Name:    mul_single_sdk 
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
module mul_single_sdk(
    input [2:0] res1,
    input [2:0] res2,
    input [2:0] moduli,
    output [2:0] mul
	 
	 );
	 wire [5:0] multi1;
	 multiplier_3_3_6_BIT m1(.a(res1), .b(res2), .result(multi1));
	 
	 modulus_6_3_BIT mm(.dividend(multi1) ,.moduli(moduli) ,.remainder(mul));
	
	 
	 

endmodule
