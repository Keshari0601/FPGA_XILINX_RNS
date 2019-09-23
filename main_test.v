`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:14:29 09/14/2019
// Design Name:   main
// Module Name:   C:/Users/dell/Xilinx/Avishkar_FPGA/main_test.v
// Project Name:  Avishkar_FPGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

	// Inputs
	reg [3:0] binary_number_1;
	reg [3:0] binary_number_2;
	reg [2:0] moduli_1;
	reg [2:0] moduli_2;
	reg [2:0] moduli_3;
	reg [1:0] operation;

	// Outputs
	wire [6:0] result;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.binary_number_1(binary_number_1), 
		.binary_number_2(binary_number_2), 
		.moduli_1(moduli_1), 
		.moduli_2(moduli_2), 
		.moduli_3(moduli_3), 
		.operation(operation), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		binary_number_1 = 4'b1001;
		binary_number_2 = 4'b0110;
		moduli_1 = 3'b011;
		moduli_2 = 3'b100;
		moduli_3 = 3'b101;
		operation = 2'b00;

		// Wait 100 ns for global reset to finish

		#100;
        
		// Add stimulus here

	end
      
endmodule

