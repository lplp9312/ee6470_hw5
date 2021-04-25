#ifndef GAU_BLUR_FILTER_H_
#define GAU_BLUR_FILTER_H_
#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "filter_def.h"

class GauFilter: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_uint<24> >::in i_rgb;
	cynw_p2p< sc_dt::sc_uint<24> >::out o_result;
#else
	sc_fifo_in< sc_dt::sc_uint<24> > i_rgb;
	sc_fifo_out< sc_dt::sc_uint<24> > o_result;
#endif

	SC_HAS_PROCESS( GauFilter );
	GauFilter( sc_module_name n );
	~GauFilter();
private:
	void do_filter();
  	sc_dt::sc_uint<8> val[MASK_N];
	sc_dt::sc_uint<8> RGB[MASK_N];
};
#endif
