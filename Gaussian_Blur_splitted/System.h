#ifndef SYSTEM_H_
#define SYSTEM_H_
#include <systemc>
using namespace sc_core;

#include "Testbench.h"
#ifndef NATIVE_SYSTEMC
#include "GauFilter_wrap.h"
#else
#include "GauFilter.h"
#endif

class System: public sc_module
{
public:
	SC_HAS_PROCESS( System );
	System( sc_module_name n, std::string input_bmp, std::string output_bmp );
	~System();
private:
  Testbench tb;
#ifndef NATIVE_SYSTEMC
	GauFilter_wrapper gau_blur_filter;
#else
	GauFilter gau_blur_filter;
#endif
	sc_clock clk;
	sc_signal<bool> rst;
#ifndef NATIVE_SYSTEMC
	//cynw_p2p< sc_dt::sc_uint<24> > rgb;
	cynw_p2p< sc_dt::sc_uint<8> > r;
	cynw_p2p< sc_dt::sc_uint<8> > g;
	cynw_p2p< sc_dt::sc_uint<8> > b;
	cynw_p2p< sc_dt::sc_uint<24> > result;
#else
	//sc_fifo< sc_dt::sc_uint<24> > rgb;
	sc_fifo< sc_dt::sc_uint<8> > r;
	sc_fifo< sc_dt::sc_uint<8> > g;
	sc_fifo< sc_dt::sc_uint<8> > b;
	sc_fifo< sc_dt::sc_uint<24> > result;
#endif

	std::string _output_bmp;
};
#endif
