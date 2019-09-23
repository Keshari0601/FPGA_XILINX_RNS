`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:17 09/14/2019 
// Design Name: 
// Module Name:    MUX_2_1_7_BIT 
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
module MUX_2_1_7_BIT(
	 input [6:0] num,
    input [6:0] comp,
    input s0,
    output [6:0] result
    );
	 wire inv=~s0;
	 assign result[0] = num[0]&inv | comp[0]&s0;
	 assign result[1] = num[1]&inv | comp[1]&s0;
    assign result[2] = num[2]&inv | comp[2]&s0;
    assign result[3] = num[3]&inv | comp[3]&s0;
	 assign result[4] = num[4]&inv | comp[4]&s0;
	 assign result[5] = num[5]&inv | comp[5]&s0;
    assign result[6] = num[6]&inv | comp[6]&s0;
    


endmodule
