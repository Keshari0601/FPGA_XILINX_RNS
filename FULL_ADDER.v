`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:58 09/11/2019 
// Design Name: 
// Module Name:    FULL_ADDER 
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
module FULL_ADDER(
    input a,
    input b,
    input cin,
    output result,
    output cout
    );
	 wire exor;
	 assign exor=a^b;
	 assign result=exor^cin;
	 assign cout=a&b |  exor&cin;

endmodule
