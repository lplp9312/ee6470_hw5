`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 02:59:37 CST (+0800), Monday 26 April 2021
    Configured on: ws34
    Configured by: m109061634 (m109061634)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GauFilter_N_Mux_8_3_2_4 (
	in4,
	in3,
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [7:0] in4,
	in3,
	in2;
input [1:0] ctrl1;
output [7:0] out1;
wire [7:0] asc001;

reg [7:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1 or in3 or in2 or in4) begin
	casez (ctrl1)
		2'B01 : asc001_tmp_0 = in3 ;
		2'B00 : asc001_tmp_0 = in2 ;
		default : asc001_tmp_0 = in4 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  v7D4Qg0= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


