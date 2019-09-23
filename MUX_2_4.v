`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:27 09/13/2019 
// Design Name: 
// Module Name:    MUX_2_4 
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
module MUX_2_4(
    input [6:0] add,
    input [6:0] sub,
    input [6:0] mul,
    output [6:0] result,
    input s0,
    input s1
    );
	 wire inv_s0=~s0;
	 wire inv_s1=~s1;
	 assign result[0]= inv_s0 & inv_s0 & add[0] | s0 & inv_s1 & sub[0] | inv_s0 & s1 & mul[0] | s0 & s1 & 1'b0;
	 assign result[1]= inv_s0 & inv_s0 & add[1] | s0 & inv_s1 & sub[1] | inv_s0 & s1 & mul[1] | s0 & s1 & 1'b0;
	 assign result[2]= inv_s0 & inv_s0 & add[2] | s0 & inv_s1 & sub[2] | inv_s0 & s1 & mul[2] | s0 & s1 & 1'b0;
	 assign result[3]= inv_s0 & inv_s0 & add[3] | s0 & inv_s1 & sub[3] | inv_s0 & s1 & mul[3] | s0 & s1 & 1'b0;
	 assign result[4]= inv_s0 & inv_s0 & add[4] | s0 & inv_s1 & sub[4] | inv_s0 & s1 & mul[4] | s0 & s1 & 1'b0;
	 assign result[5]= inv_s0 & inv_s0 & add[5] | s0 & inv_s1 & sub[5] | inv_s0 & s1 & mul[5] | s0 & s1 & 1'b0;
	 assign result[6]= inv_s0 & inv_s0 & add[6] | s0 & inv_s1 & sub[6] | inv_s0 & s1 & mul[6] | s0 & s1 & 1'b0;
	 


endmodule
