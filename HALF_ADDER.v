`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:44 09/11/2019 
// Design Name: 
// Module Name:    HALF_ADDER 
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
module HALF_ADDER(
    input a,
    input b,
    output result,
    output cout
    );
		assign result=a^b;
		assign cout=a&b;

endmodule
