`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 03:04:33 CST (+0800), Monday 26 April 2021
    Configured on: ws34
    Configured by: m109061634 (m109061634)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GauFilter_Add2R11_4Mul2u8u8u8_1 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [7:0] in3,
	in2,
	in1;
output [7:0] out1;
wire [7:0] asc001;
wire [11:0] asc002;

assign asc002 = 
	+(in1 * in2);

assign asc001 = 
	+(in3)
	+(asc002[11:4]);

assign out1 = asc001;
endmodule

/* CADENCE  ubj3Sws= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

