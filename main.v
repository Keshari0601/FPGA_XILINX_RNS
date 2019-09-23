`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:32 09/11/2019 
// Design Name: 
// Module Name:    main 
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
module main(
    input [3:0] binary_number_1,
    input [3:0] binary_number_2,
    input [2:0] moduli_1,
    input [2:0] moduli_2,
    input [2:0] moduli_3,
    input [1:0] operation,
	 
	 //00 for sum
	 //01 for sub
	 //10 for mul
	 //11 for zero
    output [6:0] result
    );
	 wire [2:0] rns11,rns12,rns13;
	 wire [2:0] rns21,rns22,rns23;
	 
	 wire [2:0] result1,result2,result3;
	 
	 wire [3:0] binary_Comp_1,binary_Comp_2;
	 
	 
	 wire [3:0] passing_mux_1,passing_mux_2;
	 
	 
	 Adder_4_BIT b_comp_plus_one(.a(4'b0001),.b(~binary_number_1),.result(binary_Comp_1));
	 Adder_4_BIT b_comp_plus_one11(.a(4'b0001),.b(~binary_number_2),.result(binary_Comp_2));
	
	 wire mux_selll=~operation[0]&operation[1];
	 MUX_2_1 two_comp_or_rns_1(.num(binary_number_1) ,.comp(binary_Comp_1) ,.s0(mux_selll&binary_number_1[3]) ,.result(passing_mux_1));
	 MUX_2_1 two_comp_or_rns_2(.num(binary_number_2) ,.comp(binary_Comp_2) ,.s0(mux_selll&binary_number_2[3]) ,.result(passing_mux_2));
	 
	 
	 modulus_4_3_BIT mod_rns11(.dividend(passing_mux_1) ,.moduli(moduli_1) ,.remainder(rns11));
	 modulus_4_3_BIT mod_rns12(.dividend(passing_mux_1) ,.moduli(moduli_2) ,.remainder(rns12));
	 modulus_4_3_BIT mod_rns13(.dividend(passing_mux_1) ,.moduli(moduli_3) ,.remainder(rns13));
	 
	 modulus_4_3_BIT mod_rns21(.dividend(passing_mux_2) ,.moduli(moduli_1) ,.remainder(rns21));
	 modulus_4_3_BIT mod_rns22(.dividend(passing_mux_2) ,.moduli(moduli_2) ,.remainder(rns22));
	 modulus_4_3_BIT mod_rns23(.dividend(passing_mux_2) ,.moduli(moduli_3) ,.remainder(rns23));
	 
	 wire [2:0] sum_res1,sum_res2,sum_res3;
	 wire [2:0] sub_res1,sub_res2,sub_res3;
	 wire [2:0] mul_res1,mul_res2,mul_res3;
	 wire [2:0] zero;
	 
	 assign zero=3'b000;
	 
	 wire [2:0] oprtn0,oprtn1,ioprtn0,ioprtn1;
	 assign oprtn0[0]=operation[0];
	 assign oprtn0[1]=operation[0];
	 assign oprtn0[2]=operation[0];
	 
	 assign oprtn1[0]=operation[1];
	 assign oprtn1[1]=operation[1];
	 assign oprtn1[2]=operation[1];
	 
	 assign ioprtn0=~oprtn0;
	 assign ioprtn1=~oprtn1;
	 
	 
	 
	 assign result1=ioprtn0 & ioprtn1 & sum_res1 | oprtn0 & ioprtn1 & sub_res1 | ioprtn0 & oprtn1 & mul_res1 | oprtn0 & oprtn1 & zero ;
	 assign result2=ioprtn0 & ioprtn1 & sum_res2 | oprtn0 & ioprtn1 & sub_res2 | ioprtn0 & oprtn1 & mul_res2 | oprtn0 & oprtn1 & zero ;
	 assign result3=ioprtn0 & ioprtn1 & sum_res3 | oprtn0 & ioprtn1 & sub_res3 | ioprtn0 & oprtn1 & mul_res3 | oprtn0 & oprtn1 & zero ;
	 
	 
	 
	 Adder_moduli addres(rns11,rns12,rns13,rns21,rns22,rns23,moduli_1,moduli_2,moduli_3,sum_res1,sum_res2,sum_res3);
	 Subtraction_main subb(rns11,rns12,rns13,rns21,rns22,rns23,moduli_1,moduli_2,moduli_3,sub_res1,sub_res2,sub_res3);
	 MUL_MAIN mul_final(rns11,rns12,rns13,rns21,rns22,rns23,moduli_1,moduli_2,moduli_3,mul_res1,mul_res2,mul_res3);
	
	 
	 
	 
	 
	 
	 
	 wire [6:0] temp_final_result;
	 
	 
	 wire [6:0] temp_final_comp;
	 Adder_7_BIT temp_final_comp_plus_one(.a(7'b0000001),.b(~temp_final_result),.result(temp_final_comp));
	 
	 
	 MUX_2_1_7_BIT final_mux(.num(temp_final_result) , .comp(temp_final_comp) , .s0(mux_selll&(binary_number_1[3]^binary_number_2[3])) , .result(result));
	  
	 //assign result[3:0]=temp_final_result[3:0];
	 //assign result[6:5]=temp_final_result[6:5];
	// assign result[4]=(~(ioprtn0 ^ ioprtn1)) & 1'b0 | (ioprtn0 ^ ioprtn1 )& temp_final_result[4];
	 
	 
	 
	 rns_to_binary r1(.residue1(result1) ,.residue2(result2) ,.residue3(result3), .moduli1(moduli_1), .moduli2(moduli_2), .moduli3(moduli_3), .binary(temp_final_result)); 
	 

endmodule
