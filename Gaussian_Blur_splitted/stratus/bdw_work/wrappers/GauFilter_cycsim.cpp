/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/

#ifdef NCSC
#include <string>
typedef std::string sc_string;
#define SYSTEMC_VERSION 20070314
#endif

#include "GauFilter_cycsim.h"
#include "esc_catrace.h"
#include "verilated.h"
#include "VGauFilter_rtl.h"


class VGauFilter_rtl;

class GauFilter_cycsimV : public GauFilter_cycsim
{
    // Port declarations inherited from parent class

    // These signals are used to connect ports that need type conversion to the RTL ports
    sc_signal< uint32_t > i_r_data_I;
    sc_signal< uint32_t > i_g_data_I;
    sc_signal< uint32_t > i_b_data_I;
    sc_signal< uint32_t > o_result_data_O;


    // The following threads are used to do the type conversion.
    inline void thread_i_r_data_I() {
        i_r_data_I = (sc_uint<8>)i_r_data.read();
    };
    inline void thread_i_g_data_I() {
        i_g_data_I = (sc_uint<8>)i_g_data.read();
    };
    inline void thread_i_b_data_I() {
        i_b_data_I = (sc_uint<8>)i_b_data.read();
    };
    inline void thread_o_result_data_O() {
        o_result_data = o_result_data_O.read();
    };


    SC_HAS_PROCESS(GauFilter_cycsimV);

public:

    GauFilter_cycsimV( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" GauFilter") ) )
        : GauFilter_cycsim(in_name)
    {
        // instantiate the verilated module
        GauFilter_cyc0 = new VGauFilter_rtl( "VGauFilter" );
        // generate port connections
        GauFilter_cyc0->i_clk(i_clk);
        GauFilter_cyc0->i_rst(i_rst);
        GauFilter_cyc0->i_r_busy(i_r_busy);
        GauFilter_cyc0->i_r_vld(i_r_vld);
        GauFilter_cyc0->i_r_data(i_r_data_I);
        GauFilter_cyc0->i_g_busy(i_g_busy);
        GauFilter_cyc0->i_g_vld(i_g_vld);
        GauFilter_cyc0->i_g_data(i_g_data_I);
        GauFilter_cyc0->i_b_busy(i_b_busy);
        GauFilter_cyc0->i_b_vld(i_b_vld);
        GauFilter_cyc0->i_b_data(i_b_data_I);
        GauFilter_cyc0->o_result_busy(o_result_busy);
        GauFilter_cyc0->o_result_vld(o_result_vld);
        GauFilter_cyc0->o_result_data(o_result_data_O);


        // setup the type conversion threads
        SC_METHOD( thread_i_r_data_I);
            sensitive << i_r_data;
        SC_METHOD( thread_i_g_data_I);
            sensitive << i_g_data;
        SC_METHOD( thread_i_b_data_I);
            sensitive << i_b_data;
        SC_METHOD( thread_o_result_data_O);
            sensitive << o_result_data_O;


        TraceFileType* tfp = esc_get_ca_trace_file();
        if ( tfp )
        {
            GauFilter_cyc0->trace(tfp,99);
        }
    };

    ~GauFilter_cycsimV()
    {
        delete GauFilter_cyc0;
    }

    void end_of_elaboration()
    {
        esc_open_ca_trace_file();
    }

    void end_of_simulation()
    {
        esc_close_ca_trace_file();
    }

protected:
    VGauFilter_rtl* GauFilter_cyc0;
};

GauFilter_cycsim* GauFilter_cycsim_factory()
{
    return new GauFilter_cycsimV("GauFilter");
}

class GauFilter_linkup
{
public:
    GauFilter_linkup() {
        extern GauFilter_cycsim* (*GauFilter_cycsim_factory_p)();
        GauFilter_cycsim_factory_p = &GauFilter_cycsim_factory;
    }
};

// Create the one instance of the factory for this verilated model.
GauFilter_linkup GauFilter_cycsimV_link;


