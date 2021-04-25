/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/
/****************************************************************************
*
* Verilog Verification wrapper module for the GauFilter module.
*
* This module contains the followng items:
*	- A foreign module definition for use in instantiatin the type_wrapper module
*      which contains the BEH module instance.
*	- An instance of the type_wrapper foreign module.
*   - alwyas blocks each type_wrapper output.
*
****************************************************************************/

`timescale 1 ps / 1 ps

module GauFilter_vlwrapper(
      i_clk,
       i_rst,
       i_r_busy,
       i_r_vld,
       i_r_data,
       i_g_busy,
       i_g_vld,
       i_g_data,
       i_b_busy,
       i_b_vld,
       i_b_data,
       o_result_busy,
       o_result_vld,
       o_result_data

    );

	input i_clk;
	input i_rst;
	output i_r_busy;
	reg i_r_busy;
	wire m_i_r_busy;
	input i_r_vld;
	input [7:0] i_r_data;
	output i_g_busy;
	reg i_g_busy;
	wire m_i_g_busy;
	input i_g_vld;
	input [7:0] i_g_data;
	output i_b_busy;
	reg i_b_busy;
	wire m_i_b_busy;
	input i_b_vld;
	input [7:0] i_b_data;
	input o_result_busy;
	output o_result_vld;
	reg o_result_vld;
	wire m_o_result_vld;
	output [23:0] o_result_data;
	reg[23:0] o_result_data;
	wire [23:0] m_o_result_data;


    // Instantiate the Verilog module that instantiates the SystemC module
    GauFilter_type_wrapper GauFilter_sc(
        .i_clk(i_clk),
         .i_rst(i_rst),
         .i_r_busy(m_i_r_busy),
         .i_r_vld(i_r_vld),
         .i_r_data(i_r_data),
         .i_g_busy(m_i_g_busy),
         .i_g_vld(i_g_vld),
         .i_g_data(i_g_data),
         .i_b_busy(m_i_b_busy),
         .i_b_vld(i_b_vld),
         .i_b_data(i_b_data),
         .o_result_busy(o_result_busy),
         .o_result_vld(m_o_result_vld),
         .o_result_data(m_o_result_data)

    );

    // Always blocks for non-blocking assignments of type_wrapper outputs to
    // Verilog Verificatoin wrapper outputs.

    always @(m_i_r_busy)
     begin
      i_r_busy <= m_i_r_busy;
     end
    always @(m_i_g_busy)
     begin
      i_g_busy <= m_i_g_busy;
     end
    always @(m_i_b_busy)
     begin
      i_b_busy <= m_i_b_busy;
     end
    always @(m_o_result_vld)
     begin
      o_result_vld <= m_o_result_vld;
     end
    always @(m_o_result_data)
     begin
      o_result_data <= m_o_result_data;
     end


endmodule

// This is an internal module that instantiates the user's SystemC input module
// using the Incisive foreign module instantiation feature.
// The name of the module and the names of the inputs and outputs must match
// with those defined in the SystemC type_wrapper module
module GauFilter_type_wrapper(
      i_clk,
       i_rst,
       i_r_busy,
       i_r_vld,
       i_r_data,
       i_g_busy,
       i_g_vld,
       i_g_data,
       i_b_busy,
       i_b_vld,
       i_b_data,
       o_result_busy,
       o_result_vld,
       o_result_data

    ) (* integer foreign = "SystemC";
    *);

	input i_clk;
	input i_rst;
	output i_r_busy;
	input i_r_vld;
	input [7:0] i_r_data;
	output i_g_busy;
	input i_g_vld;
	input [7:0] i_g_data;
	output i_b_busy;
	input i_b_vld;
	input [7:0] i_b_data;
	input o_result_busy;
	output o_result_vld;
	output [23:0] o_result_data;


endmodule
