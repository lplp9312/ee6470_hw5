`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 03:10:24 CST (+0800), Monday 26 April 2021
    Configured on: ws34
    Configured by: m109061634 (m109061634)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GauFilter_Add_8Ux8U_8U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [7:0] in2,
	in1;
output [7:0] out1;
wire [7:0] asc001;

assign asc001 = 
	+(in2)
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  urf5SQg= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


