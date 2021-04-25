//
// Top-level Verilog module

// One of these modules is created for each testcase that involves
// co-simulation.  This one is for the 'V_BASIC' testcase.
// The top-level module contains:
//	- An instances of a co-simulation wrapper module for each instance
//	  simulating in Verilog.
//	- Hub initialization calls that load the shared library for the
//	  simulation.
//
// You can add any other legal Verilog to this template file, and it appear in
// the verilog module.

`timescale 1 ps / 1 ps

module top;

	// RTL wrapper instances for cosim.
	GauFilter_cosim GauFilter0();


	integer n_cur_time;
	initial n_cur_time=0;
	reg [63:0] cur_time;
	initial cur_time=0;

	`include "hub.v"

	// Load library and begin co-simulation.
	initial begin

        // For gate-level simulations we back-annotate the instances with delays
        // from the SDF file
        

		// Open the trace file if that's appropriate.
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
			$dumpfile( "bdw_work/sims/V_BASIC/verilog.vcd" );
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
		$dumpvars( 0, GauFilter0.i_clk );
		$dumpvars( 0, GauFilter0.i_rst );
		$dumpvars( 0, GauFilter0.i_r_busy );
		$dumpvars( 0, GauFilter0.i_r_vld );
		$dumpvars( 0, GauFilter0.i_r_data );
		$dumpvars( 0, GauFilter0.i_g_busy );
		$dumpvars( 0, GauFilter0.i_g_vld );
		$dumpvars( 0, GauFilter0.i_g_data );
		$dumpvars( 0, GauFilter0.i_b_busy );
		$dumpvars( 0, GauFilter0.i_b_vld );
		$dumpvars( 0, GauFilter0.i_b_data );
		$dumpvars( 0, GauFilter0.o_result_busy );
		$dumpvars( 0, GauFilter0.o_result_vld );
		$dumpvars( 0, GauFilter0.o_result_data );
			$dumpvars( 4, GauFilter0.GauFilter0 );
		end


		// If the SystemC shared library will be loaded using +qbSetOption+libdef=libname.so
		// from the Verilog simulator's command line, the following line can be left
		// out.  In order to load the shared library directly from Verilog, uncomment
		// the following line using either ther automatically generated SIM_EXEC string,
		// or a hard-coded string giving the path to the shared library.
		//hubLoadLibrary( "bdw_work/sims/V_BASIC/sim_V_BASIC.so", "" );

		// Begin a co-simulation.
		// This task returns after esc_end_cosim() is called from SystemC.
		hubStartCosim;
		#100 $stop;
	end
endmodule

//
// The following wrapper modules are used only for NCSim cosims.
//

`ifdef BDW_NCSC

module GauFilter_nc_cosim(i_clk,
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
wire i_clk;
input i_rst;
wire i_rst;
output i_r_busy;
wire i_r_busy;
input i_r_vld;
wire i_r_vld;
input i_r_data;
wire[7:0] i_r_data;
output i_g_busy;
wire i_g_busy;
input i_g_vld;
wire i_g_vld;
input i_g_data;
wire[7:0] i_g_data;
output i_b_busy;
wire i_b_busy;
input i_b_vld;
wire i_b_vld;
input i_b_data;
wire[7:0] i_b_data;
input o_result_busy;
wire o_result_busy;
output o_result_vld;
wire o_result_vld;
output o_result_data;
wire[23:0] o_result_data;

	reg i_r_vld_delayed;
	always @ (i_r_vld) i_r_vld_delayed <= i_r_vld;
	reg [7:0]i_r_data_delayed;
	always @ (i_r_data) i_r_data_delayed <= i_r_data;
	reg i_g_vld_delayed;
	always @ (i_g_vld) i_g_vld_delayed <= i_g_vld;
	reg [7:0]i_g_data_delayed;
	always @ (i_g_data) i_g_data_delayed <= i_g_data;
	reg i_b_vld_delayed;
	always @ (i_b_vld) i_b_vld_delayed <= i_b_vld;
	reg [7:0]i_b_data_delayed;
	always @ (i_b_data) i_b_data_delayed <= i_b_data;
	reg o_result_busy_delayed;
	always @ (o_result_busy) o_result_busy_delayed <= o_result_busy;
GauFilter GauFilter0( 	.i_clk(i_clk),
	.i_rst(i_rst),
	.i_r_busy(i_r_busy),
	.i_r_vld(i_r_vld_delayed),
	.i_r_data(i_r_data_delayed),
	.i_g_busy(i_g_busy),
	.i_g_vld(i_g_vld_delayed),
	.i_g_data(i_g_data_delayed),
	.i_b_busy(i_b_busy),
	.i_b_vld(i_b_vld_delayed),
	.i_b_data(i_b_data_delayed),
	.o_result_busy(o_result_busy_delayed),
	.o_result_vld(o_result_vld),
	.o_result_data(o_result_data)
);

   `include "hub.v"

   initial begin

if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
	$dumpfile( "bdw_work/sims/V_BASIC/verilog.vcd" );
if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
$dumpvars( 0, GauFilter0.i_clk );
$dumpvars( 0, GauFilter0.i_rst );
$dumpvars( 0, GauFilter0.i_r_busy );
$dumpvars( 0, GauFilter0.i_r_vld );
$dumpvars( 0, GauFilter0.i_r_data );
$dumpvars( 0, GauFilter0.i_g_busy );
$dumpvars( 0, GauFilter0.i_g_vld );
$dumpvars( 0, GauFilter0.i_g_data );
$dumpvars( 0, GauFilter0.i_b_busy );
$dumpvars( 0, GauFilter0.i_b_vld );
$dumpvars( 0, GauFilter0.i_b_data );
$dumpvars( 0, GauFilter0.o_result_busy );
$dumpvars( 0, GauFilter0.o_result_vld );
$dumpvars( 0, GauFilter0.o_result_data );
	$dumpvars( 4, GauFilter0 );
end
   end

endmodule


`endif


