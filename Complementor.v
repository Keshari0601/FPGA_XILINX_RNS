`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:30:02 09/14/2019 
// Design Name: 
// Module Name:    Complementor 
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
module Complementor(
    input [2:0] res,
    input [2:0] moduli,
    output [2:0] comp
    );
	 
	 wire [2:0] res_1s_comp=~res;
	 wire [2:0] p;
	 assign p=res_1s_comp^3'b001;
	 wire [2:0] g;
	 assign g=res_1s_comp&3'b001;
	 wire [2:0] c;
	 assign c[0]=1'b0;
	 assign c[1]=g[0];
	 assign c[2]=g[1] | p[1]&g[0] ;
	 
	 wire [2:0] result= p^c;
	 
	 wire [2:0] p1;
	 assign p1=result^moduli;
	 wire [2:0] g1;
	 assign g1=result&moduli;
	 wire [2:0] c1;
	 assign c1[0]=1'b0;
	 assign c1[1]=g1[0];
	 assign c1[2]=g1[1] | p1[1]&g1[0] ;
	 
	 assign comp= p1^c1;
	 

endmodule
