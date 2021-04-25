// Generated by stratus_hls 19.12-s100  (91710.131054)
// Mon Apr 26 03:10:49 2021
// from ../GauFilter.cpp
#include "GauFilter_ROM_9X8_mask.h"

struct GauFilter_ROM_9X8_mask;
GauFilter_ROM_9X8_mask::GauFilter_ROM_9X8_mask(sc_module_name name) : sc_module(name) 
    ,in1("in1")
    ,out1("out1")
    ,clk("clk")
    ,mask()
{
  CYN_ROM_INIT( sc_uint<8> , mask, ENUMS::CYN_HEX, "bdw_work/modules/GauFilter/BASIC/GauFilter_ROM_9X8_mask_0.memh", "initialize GauFilter_ROM_9X8_mask" ); 
  SC_METHOD(GauFilter_ROM_9X8_mask_mask_thread_1);
  sensitive << clk.pos();
  dont_initialize();

}
void GauFilter_ROM_9X8_mask::GauFilter_ROM_9X8_mask_mask_thread_1(){
  if ( (/*imp*/sc_uint<1>)(in1.read() < ((/*imp*/sc_uint<4> )(9ULL))) ) {
    out1 = (sc_uint<8> ) ((mask)[in1.read()]);
  } 
}
