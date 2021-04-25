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
* This file is used to wrap the three different versions of the DUT
* block called "GauFilter". By default, it will include the behavioral
* model. Otherwise, it will include the RTL C++ or the RTL Verilog
* depending on the definition of either of "RTL" or "COSIM".
*
****************************************************************************/


#include	"GauFilter_sc_wrap.h"
#include	"GauFilter_sc_foreign.h"

// The following threads are used to connect structured ports to the actual
// RTL ports

void GauFilter_wrapper::InitInstances(  )
{
	
            
    GauFilter0 = new GauFilter( "GauFilter" );

    GauFilter0->i_clk(i_clk);
    GauFilter0->i_rst(i_rst);
    GauFilter0->i_r_busy(i_r.busy);
    GauFilter0->i_r_vld(i_r.vld);
    GauFilter0->i_r_data(i_r.data);
    GauFilter0->i_g_busy(i_g.busy);
    GauFilter0->i_g_vld(i_g.vld);
    GauFilter0->i_g_data(i_g.data);
    GauFilter0->i_b_busy(i_b.busy);
    GauFilter0->i_b_vld(i_b.vld);
    GauFilter0->i_b_data(i_b.data);
    GauFilter0->o_result_busy(o_result.busy);
    GauFilter0->o_result_vld(o_result.vld);
    GauFilter0->o_result_data(o_result.data);

}

void GauFilter_wrapper::InitThreads()
{
    
}

void GauFilter_wrapper::DeleteInstances()
{
    if (GauFilter0)
    {
        delete GauFilter0;
        GauFilter0 = 0;
    }
}

