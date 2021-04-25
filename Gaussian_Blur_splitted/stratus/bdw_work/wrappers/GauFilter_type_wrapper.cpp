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
* This file contains the GauFilter_type_wrapper module
* for use in the verilog verification wrapper GauFilter_vlwrapper.v
* It creats an instance of the GauFilter module and has threads
* for converting the BEH ports to RTL level ports on the wrapper.
*
****************************************************************************/

#include "GauFilter_type_wrapper.h"


SC_MODULE_EXPORT(GauFilter_type_wrapper)

// The following threads are used to connect RTL ports to the actual
// structured ports

void GauFilter_type_wrapper::InitInstances()
{
    GauFilter0 = new GauFilter( "GauFilter" );

    GauFilter0->i_clk(i_clk);
    GauFilter0->i_rst(i_rst);
    GauFilter0->i_r.busy(i_r_busy);
    GauFilter0->i_r.vld(i_r_vld);
    GauFilter0->i_r.data(i_r_data);
    GauFilter0->i_g.busy(i_g_busy);
    GauFilter0->i_g.vld(i_g_vld);
    GauFilter0->i_g.data(i_g_data);
    GauFilter0->i_b.busy(i_b_busy);
    GauFilter0->i_b.vld(i_b_vld);
    GauFilter0->i_b.data(i_b_data);
    GauFilter0->o_result.busy(o_result_busy);
    GauFilter0->o_result.vld(o_result_vld);
    GauFilter0->o_result.data(o_result_data);

}

void GauFilter_type_wrapper::InitThreads()
{
    
}

void GauFilter_type_wrapper::DeleteInstances()
{
        delete GauFilter0;
        GauFilter0 = 0;
}

