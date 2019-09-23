`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:09:52 09/14/2019 
// Design Name: 
// Module Name:    Sub_moduli_single 
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
module Sub_moduli_single(
    input [2:0] res1,
    input [2:0] res2,
    input [2:0] moduli,
    output [2:0] sub
    );
	 
	 wire [2:0] res2_comp;
	 Complementor cc(res2,moduli,res2_comp);
	 
	 wire [3:0] p;
	 assign p=res1^res2_comp;
	 wire [3:0] g;
	 assign g=res1&res2_comp;
	 wire [3:0] c;
	 assign c[0]=1'b0;
	 assign c[1]=g[0];
	 assign c[2]=g[1] | p[1]&g[0] ;
	 assign c[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] ;
	 
	 wire [3:0] temp_sum;
	 assign temp_sum=p^c;
	 
	 wire comp_out;
	 wire [3:0] temp_moduli;
	 assign temp_moduli[2:0]=moduli;
	 assign temp_moduli[3]=1'b0;
	 
	 Comparator_4_BIT_GE comp1( .a(temp_sum), .b(temp_moduli), .ge(comp_out));
	 
	 wire [3:0] mux_out1;
	 Mux_2_1_4_BIT mux1(  .a(4'b0000),  .b(temp_moduli), .result(mux_out1), .select(comp_out));
	 
	 wire [3:0] final;
	 SUBTRACTOR_4_BIT sub1(.a(temp_sum), .b(mux_out1), .result(final));
	 
	 
	 assign sub=final[2:0];
	 


endmodule
