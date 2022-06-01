# FPGA_XILINX_RNS

A residue numeral system (RNS) is a numeral system representing integers by their values modulo several pairwise coprime integers called the moduli.
The main advantage of the residue number system is the absence of carries between columns in addition and in multiplication and reduction of computational load.
We designed an RNS system that converts input bits into RNS, perform operations on the residues obtained and then reconvert result into Binary Number System.

![image](https://user-images.githubusercontent.com/37958251/171382130-2ea56726-b4dc-43f5-a56b-7014f7926016.png)

In this project the coding of RNS system has been done in Verilog, it is a hardware description language used in electronic design automation to describe digital and mixed signal systems such as FPGA(field-programmable gate arrays) and integrated circuits. It is commonly used to write text models that describes  a logic circuit. Such a model is processed by a  synthesis program, only if it is part of logic design. A simulation program is used to test the logic design using simulation models to represent the logic circuits that interface to the design.

# Convertion of a number in RNS
To convert a given number into RESIDUE NUMBER SYSTEM we just need to find modulus of given numbers with respect to given moduli. To find modulus we are using the logic given below-

![image](https://user-images.githubusercontent.com/37958251/171382303-5b7bcbe8-2c7e-40f8-9fed-fdb0cbe2eab4.png)

# Addition, Subtraction and multiplication

Addition and multiplication are easy to perform in Residue Number System. We just need to add or multiply residues separately and then take modulus with its moduli. For addition we simply using 4 bit carry look ahead adder and subtracting its moduli if the result is greater then or equal to its moduli. For multiplication we are using 3BIT Vedic Multiplier.

For Subtraction we are taking the complement of residues of second number with respect to its moduli, i.e., we are subtracting the residue from its moduli and then perform Residue addition.
	
#  CONVERSION OF RESIDUES INTO BINARY NUMBER
To convert Residues into Binary Numbers the steps are:
	1. Find inverse of the moduli.
	2. Multiply remaining moduli with the inverse obtained in first step and again multiply with the residue attached to the initial moduli.
	3. Repeat the process for all moduli and find there sum and take modulus with the LCM of moduli ( Product of moduli because generally moduli are coprime to each other).

In this project controlling action is done using operation bus which acts as enable pin for the module responsible for a particular operation.
These are the following  operations than can be given to Operation BUS:
00: Addition 
01: Subtraction
10: Multiplication 
