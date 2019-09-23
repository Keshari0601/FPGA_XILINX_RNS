`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:13 09/13/2019 
// Design Name: 
// Module Name:    DeMUX_4_2 
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
module DeMUX_4_2(
    input [3:0] a,
    output [3:0] add,
    output [3:0] sub,
    output [3:0] mul,
    output [3:0] zero,
    input select0,
    input select1
    );
	 wire inv_s0,inv_s1;
	 assign inv_s0=~select0;
	 assign inv_s1=~select1;
	 
	 assign add[0]=a[0]&inv_s0&inv_s1;
	 assign add[1]=a[1]&inv_s0&inv_s1;
    assign add[2]=a[2]&inv_s0&inv_s1;
    assign add[3]=a[3]&inv_s0&inv_s1;

	 assign sub[0]=a[0]&select0&inv_s1;
	 assign sub[1]=a[1]&select0&inv_s1;
    assign sub[2]=a[2]&select0&inv_s1;
    assign sub[3]=a[3]&select0&inv_s1;

	 assign mul[0]=a[0]&inv_s0&select1;
	 assign mul[1]=a[1]&inv_s0&select1;
    assign mul[2]=a[2]&inv_s0&select1;
    assign mul[3]=a[3]&inv_s0&select1;

	 assign zero[0]=a[0]&select1&select0;
	 assign zero[1]=a[1]&select1&select0;
    assign zero[2]=a[2]&select1&select0;
    assign zero[3]=a[3]&select1&select0;


endmodule
