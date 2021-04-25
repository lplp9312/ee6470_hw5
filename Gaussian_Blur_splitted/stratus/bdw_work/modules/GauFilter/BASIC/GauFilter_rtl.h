// Generated by stratus_hls 19.12-s100  (91710.131054)
// Mon Apr 26 02:59:59 2021
// from ../GauFilter.cpp
#ifndef CYNTH_PART_GauFilter_GauFilter_rtl_h
#define CYNTH_PART_GauFilter_GauFilter_rtl_h

#include "systemc.h"
/* Include declarations of instantiated parts. */
#include "GauFilter_ROM_9X8_mask.h"


/* Declaration of the synthesized module. */
struct GauFilter : public sc_module {
  sc_in<bool > i_clk;
  sc_in<bool > i_rst;
  sc_out<bool > i_r_busy;
  sc_in<bool > i_r_vld;
  sc_in<sc_uint<8> > i_r_data;
  sc_out<bool > i_g_busy;
  sc_in<bool > i_g_vld;
  sc_in<sc_uint<8> > i_g_data;
  sc_out<bool > i_b_busy;
  sc_in<bool > i_b_vld;
  sc_in<sc_uint<8> > i_b_data;
  sc_in<bool > o_result_busy;
  sc_out<bool > o_result_vld;
  sc_out<sc_uint<24> > o_result_data;
  GauFilter( sc_module_name name );
  SC_HAS_PROCESS(GauFilter);
  sc_signal<bool > o_result_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > GauFilter_Xor_1Ux1U_1U_1_1_out1;
  sc_signal<bool > o_result_m_unacked_req;
  sc_signal<sc_uint<1> > GauFilter_Or_1Ux1U_1U_4_2_out1;
  sc_signal<sc_uint<1> > GauFilter_N_Muxb_1_2_4_4_10_out1;
  sc_signal<bool > i_b_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  GauFilter_gen_busy_r_4_41_gen_busy_0_i_r_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_41_gdiv_i3;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_41_gnew_req_i1;
  sc_signal<sc_uint<1> > GauFilter_N_Muxb_1_2_4_4_7_out1;
  sc_signal<bool > i_g_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  GauFilter_gen_busy_r_4_40_gen_busy_0_i_r_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_40_gdiv_i3;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_40_gnew_req_i1;
  sc_signal<sc_uint<1> > GauFilter_N_Muxb_1_2_4_4_4_out1;
  sc_signal<bool > i_r_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  GauFilter_gen_busy_r_4_39_gen_busy_0_i_r_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_39_gdiv_i3;
  sc_signal<sc_uint<1> > GauFilter_gen_busy_r_4_39_gnew_req_i1;
  sc_signal<sc_uint<4> > global_state_next;
  sc_signal<sc_uint<8> > GauFilter_Add_8Ux8U_8U_4_31_out1;
  sc_signal<sc_uint<8> > GauFilter_Add_8Ux8U_8U_4_31_in1;
  sc_signal<sc_uint<12> > GauFilter_Mul_8Ux8U_12U_4_30_out1;
  sc_signal<sc_uint<1> > gs_ctrl4;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_3_2_4_29_out1;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_3_2_4_28_out1;
  sc_signal<sc_uint<1> > GauFilter_OrReduction_2U_1U_4_26_out1;
  sc_signal<sc_uint<1> > GauFilter_Equal_2Ux1U_1U_4_25_out1;
  sc_signal<sc_uint<1> > GauFilter_OrReduction_2U_1U_4_16_out1;
  sc_signal<sc_uint<1> > GauFilter_Equal_2Ux1U_1U_4_15_out1;
  sc_signal<sc_uint<2> > GauFilter_Equal_2Ux1U_1U_4_15_in2;
  sc_signal<sc_uint<1> > GauFilter_Equal_2Ux2U_1U_4_14_out1;
  sc_signal<sc_uint<2> > GauFilter_Equal_2Ux2U_1U_4_14_in2;
  sc_signal<sc_uint<1> > gs_ctrl1;
  sc_signal<sc_uint<2> > GauFilter_Add_2Ux1U_2U_4_12_in2;
  sc_signal<sc_uint<1> > gs_ctrl0;
  sc_signal<sc_uint<2> > GauFilter_Add_2Ux1U_2U_4_12_out1;
  sc_signal<sc_uint<2> > s_reg_36;
  sc_signal<sc_uint<8> > s_reg_35;
  sc_signal<sc_uint<4> > GauFilter_Add_4Ux2U_4U_4_23_out1;
  sc_signal<sc_uint<4> > GauFilter_Mul_2Ux2U_4U_4_22_out1;
  sc_signal<sc_uint<4> > s_reg_34;
  sc_signal<sc_uint<8> > s_reg_33;
  sc_signal<sc_uint<8> > s_reg_32;
  sc_signal<sc_uint<2> > GauFilter_Add_2Ux1U_2U_4_20_out1;
  sc_signal<sc_uint<2> > GauFilter_Add_2Ux1U_2U_4_21_out1;
  sc_signal<sc_uint<2> > s_reg_30;
  sc_signal<sc_uint<2> > s_reg_31;
  sc_signal<sc_uint<2> > s_reg_29;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_1_4_19_out1;
  sc_signal<sc_uint<8> > s_reg_28;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_0_4_18_out1;
  sc_signal<sc_uint<8> > s_reg_27;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_0_4_17_out1;
  sc_signal<sc_uint<8> > s_reg_26;
  sc_signal<sc_uint<3> > GauFilter_gen_busy_r_4_39_out1;
  sc_signal<sc_uint<3> > GauFilter_gen_busy_r_4_40_out1;
  sc_signal<sc_uint<3> > GauFilter_gen_busy_r_4_41_out1;
  sc_signal<sc_uint<1> > GauFilter_And_1Ux1U_1U_4_37_out1;
  sc_signal<sc_uint<1> > GauFilter_Not_1U_1U_1_3_out1;
  sc_signal<bool > o_result_m_req_m_trig_req;
  sc_signal<bool > i_b_m_busy_req_0;
  sc_signal<bool > i_g_m_busy_req_0;
  sc_signal<sc_uint<1> > GauFilter_LessThan_2Ux2U_1U_4_35_out1;
  sc_signal<sc_uint<1> > GauFilter_LessThan_2Ux2U_1U_4_36_out1;
  sc_signal<sc_uint<2> > GauFilter_Add_2Ux1U_2U_4_27_out1;
  sc_signal<sc_uint<1> > GauFilter_LessThan_2Ux2U_1U_4_13_out1;
  sc_signal<sc_uint<4> > global_state;
  sc_signal<bool > i_r_m_busy_req_0;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_3_4_32_out1;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_3_4_33_out1;
  sc_signal<sc_uint<8> > GauFilter_N_Mux_8_2_3_4_34_out1;
  sc_signal<sc_uint<1> > stall0;
  sc_signal<sc_uint<4> > mask_in1;
  sc_signal<sc_uint<8> > mask_out1;
  GauFilter_ROM_9X8_mask *mask;
  void drive_o_result_data();
  void drive_i_r_m_busy_req_0();
  void drive_i_g_m_busy_req_0();
  void drive_i_b_m_busy_req_0();
  void drive_o_result_m_req_m_trig_req();
  void drive_stall0();
  void drive_s_reg_26();
  void drive_s_reg_27();
  void drive_s_reg_28();
  void drive_s_reg_29();
  void drive_s_reg_30();
  void drive_s_reg_31();
  void drive_s_reg_32();
  void drive_s_reg_33();
  void drive_s_reg_34();
  void drive_s_reg_35();
  void drive_s_reg_36();
  void drive_GauFilter_Add_2Ux1U_2U_4_12_in2();
  void GauFilter_Add_2Ux1U_2U_4_12();
  void GauFilter_LessThan_2Ux2U_1U_4_13();
  void drive_GauFilter_Equal_2Ux2U_1U_4_14_in2();
  void GauFilter_Equal_2Ux2U_1U_4_14();
  void drive_GauFilter_Equal_2Ux1U_1U_4_15_in2();
  void GauFilter_Equal_2Ux1U_1U_4_15();
  void GauFilter_OrReduction_2U_1U_4_16();
  void GauFilter_N_Mux_8_2_0_4_17();
  void GauFilter_N_Mux_8_2_0_4_18();
  void GauFilter_N_Mux_8_2_1_4_19();
  void GauFilter_Add_2Ux1U_2U_4_20();
  void GauFilter_Add_2Ux1U_2U_4_21();
  void GauFilter_Mul_2Ux2U_4U_4_22();
  void GauFilter_Add_4Ux2U_4U_4_23();
  void GauFilter_Equal_2Ux1U_1U_4_25();
  void GauFilter_OrReduction_2U_1U_4_26();
  void GauFilter_Add_2Ux1U_2U_4_27();
  void GauFilter_N_Mux_8_3_2_4_28();
  void GauFilter_N_Mux_8_3_2_4_29();
  void drive_mask_in1();
  void GauFilter_Mul_8Ux8U_12U_4_30();
  void drive_GauFilter_Add_8Ux8U_8U_4_31_in1();
  void GauFilter_Add_8Ux8U_8U_4_31();
  void GauFilter_N_Mux_8_2_3_4_32();
  void GauFilter_N_Mux_8_2_3_4_33();
  void GauFilter_N_Mux_8_2_3_4_34();
  void GauFilter_LessThan_2Ux2U_1U_4_35();
  void GauFilter_LessThan_2Ux2U_1U_4_36();
  void drive_global_state();
  void drive_global_state_next();
  void drive_gs_ctrl0();
  void drive_gs_ctrl1();
  void drive_gs_ctrl4();
  void drive_i_r_busy();
  void GauFilter_gen_busy_r_4_39_p8();
  void GauFilter_gen_busy_r_4_39_p7();
  void GauFilter_gen_busy_r_4_39_p6();
  void GauFilter_gen_busy_r_4_39_p5();
  void drive_i_r_m_unvalidated_req();
  void GauFilter_N_Muxb_1_2_4_4_4();
  void drive_i_g_busy();
  void GauFilter_gen_busy_r_4_40_p8();
  void GauFilter_gen_busy_r_4_40_p7();
  void GauFilter_gen_busy_r_4_40_p6();
  void GauFilter_gen_busy_r_4_40_p5();
  void drive_i_g_m_unvalidated_req();
  void GauFilter_N_Muxb_1_2_4_4_7();
  void drive_i_b_busy();
  void GauFilter_gen_busy_r_4_41_p8();
  void GauFilter_gen_busy_r_4_41_p7();
  void GauFilter_gen_busy_r_4_41_p6();
  void GauFilter_gen_busy_r_4_41_p5();
  void drive_i_b_m_unvalidated_req();
  void GauFilter_N_Muxb_1_2_4_4_10();
  void drive_o_result_vld();
  void GauFilter_Or_1Ux1U_1U_4_2();
  void drive_o_result_m_unacked_req();
  void GauFilter_And_1Ux1U_1U_4_37();
  void GauFilter_Xor_1Ux1U_1U_1_1();
  void drive_o_result_m_req_m_prev_trig_req();
  void GauFilter_Not_1U_1U_1_3();
};

#endif
