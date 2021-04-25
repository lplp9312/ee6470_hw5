#include "System.h"
System::System( sc_module_name n, string input_bmp, string output_bmp ): sc_module( n ), 
	tb("tb"), gau_blur_filter("gau_blur_filter"), clk("clk", CLOCK_PERIOD, SC_NS), rst("rst"), _output_bmp(output_bmp)
{
	tb.i_clk(clk);
	tb.o_rst(rst);
	gau_blur_filter.i_clk(clk);
	gau_blur_filter.i_rst(rst);
	tb.o_rgb(rgb);
	tb.i_result(result);
	gau_blur_filter.i_rgb(rgb);
	gau_blur_filter.o_result(result);

  tb.read_bmp(input_bmp);
}

System::~System() {
  tb.write_bmp(_output_bmp);
}
