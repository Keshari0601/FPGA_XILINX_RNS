`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:39 09/12/2019 
// Design Name: 
// Module Name:    encoder_3_data_4_3_BITS 
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
module encoder_3_data_4_3_BITS(
    input [2:0] data,
    input sel0,
    input sel1,
    input sel2,
    input a,
    output [2:0] output_data
    );
	 wire inv_a;
	 assign inv_a=~a;
	 
	 wire [2:0] data_1,data_2,data_3,data_4,data_5;
	 
	 assign data_1[0]=data[0]&a;
	 assign data_1[1]=data[1]&a;
	 assign data_1[2]=data[2]&a;
	 
	 wire [1:0] select_line;
	 
	 assign select_line[0]=(sel0&~sel1)|sel2;
	 assign select_line[1]=sel1|sel2;
	 
	 assign data_2[0]=1'b0&select_line[0]&select_line[1]&inv_a;
	 assign data_2[1]=1'b1&select_line[0]&select_line[1]&inv_a;
	 assign data_2[2]=1'b0&select_line[0]&select_line[1]&inv_a;
	 
	 assign data_3[0]=1'b1&~select_line[0]&select_line[1]&inv_a;
	 assign data_3[1]=1'b1&~select_line[0]&select_line[1]&inv_a;
	 assign data_3[2]=1'b0&~select_line[0]&select_line[1]&inv_a;
	 
	 assign data_4[0]=1'b0&select_line[0]&~select_line[1]&inv_a;
	 assign data_4[1]=1'b0&select_line[0]&~select_line[1]&inv_a;
	 assign data_4[2]=1'b1&select_line[0]&~select_line[1]&inv_a;
	 
	 assign data_5[0]=1'b1&~select_line[0]&~select_line[1]&inv_a;
	 assign data_5[1]=1'b0&~select_line[0]&~select_line[1]&inv_a;
	 assign data_5[2]=1'b1&~select_line[0]&~select_line[1]&inv_a;
	 
	 assign output_data=data_1|data_2|data_3|data_4|data_5;
	 


	 

endmodule
