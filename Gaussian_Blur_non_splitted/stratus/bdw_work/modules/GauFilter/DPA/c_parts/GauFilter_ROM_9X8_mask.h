// Generated by stratus_hls 19.12-s100  (91710.131054)
// Mon Apr 26 03:14:08 2021
// from ../GauFilter.cpp
#ifndef CYNTH_PART_GauFilter_GauFilter_ROM_9X8_mask_h
#define CYNTH_PART_GauFilter_GauFilter_ROM_9X8_mask_h

#include "systemc.h"
#include "cynthhl.h"
/* Include declarations of instantiated parts. */


/* Declaration of the synthesized module. */
struct GauFilter_ROM_9X8_mask : public sc_module {
  sc_in<sc_uint<4> > in1;
  sc_out<sc_uint<8> > out1;
  sc_in<bool > clk;
  GauFilter_ROM_9X8_mask( sc_module_name name );
  SC_HAS_PROCESS(GauFilter_ROM_9X8_mask);
  /*const*/ sc_uint<8> mask[9];
  void GauFilter_ROM_9X8_mask_mask_thread_1();
};

#endif
