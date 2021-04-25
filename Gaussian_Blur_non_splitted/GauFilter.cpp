#include <cmath>
#ifndef NATIVE_SYSTEMC
#include "stratus_hls.h"
#endif

#include "GauFilter.h"

GauFilter::GauFilter( sc_module_name n ): sc_module( n )
{
#ifndef NATIVE_SYSTEMC
	HLS_FLATTEN_ARRAY(val);
	HLS_FLATTEN_ARRAY(RGB);
#endif
	SC_THREAD( do_filter );
	sensitive << i_clk.pos();
	dont_initialize();
	reset_signal_is(i_rst, false);
        
#ifndef NATIVE_SYSTEMC
	i_rgb.clk_rst(i_clk, i_rst);
  o_result.clk_rst(i_clk, i_rst);
#endif
}

GauFilter::~GauFilter() {}

// gau_blur mask
const sc_dt::sc_uint<8> mask[MASK_X][MASK_Y] = {1, 2, 1, 2, 4, 2, 1, 2, 1};
const sc_dt::sc_uint<8> factor = 16;

void GauFilter::do_filter() {
	{
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_rgb.reset();
		o_result.reset();
#endif
		wait();
	}
	while (true) {
		for (unsigned int i = 0; i<MASK_N; ++i) {
			HLS_CONSTRAIN_LATENCY(0, 1, "lat00");
			val[i] = 0;
		}
		for (unsigned int v = 0; v<MASK_Y; ++v) {
			for (unsigned int u = 0; u<MASK_X; ++u) {
				sc_dt::sc_uint<24> rgb;
#ifndef NATIVE_SYSTEMC
				{
					HLS_DEFINE_PROTOCOL("input");
					rgb = i_rgb.get();
					wait();
				}
#else
				rgb = i_rgb.read();
#endif
				RGB[0] = rgb.range(7,0);
				RGB[1] = rgb.range(15,8); 
				RGB[2] = rgb.range(23,16);

				for (unsigned int i = 0; i != MASK_N; ++i) {
					HLS_CONSTRAIN_LATENCY(0, 1, "lat01");
					val[i] += RGB[i] * mask[u][v] / factor;
				}
			}
		}

		sc_dt::sc_uint<24> rgb_output;
		rgb_output.range(7, 0) = val[0];
		rgb_output.range(15, 8) = val[1];
		rgb_output.range(23, 16) = val[2];
		
#ifndef NATIVE_SYSTEMC
		{
			HLS_DEFINE_PROTOCOL("output");
			o_result.put(rgb_output);
			wait();
		}
#else
		o_result.write(rgb_output);
#endif
	}
}
