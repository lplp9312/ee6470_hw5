	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( GauFilter0 != NULL ) {
			esc_trace_signal( &GauFilter0->i_clk, ( std::string(name()) + std::string( ".GauFilter.i_clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_rst, ( std::string(name()) + std::string( ".GauFilter.i_rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_r.busy, ( std::string(name()) + std::string( ".GauFilter.i_r.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_r.vld, ( std::string(name()) + std::string( ".GauFilter.i_r.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_r.data, ( std::string(name()) + std::string( ".GauFilter.i_r.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_g.busy, ( std::string(name()) + std::string( ".GauFilter.i_g.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_g.vld, ( std::string(name()) + std::string( ".GauFilter.i_g.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_g.data, ( std::string(name()) + std::string( ".GauFilter.i_g.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_b.busy, ( std::string(name()) + std::string( ".GauFilter.i_b.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_b.vld, ( std::string(name()) + std::string( ".GauFilter.i_b.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_b.data, ( std::string(name()) + std::string( ".GauFilter.i_b.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.busy, ( std::string(name()) + std::string( ".GauFilter.o_result.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.vld, ( std::string(name()) + std::string( ".GauFilter.o_result.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.data, ( std::string(name()) + std::string( ".GauFilter.o_result.data" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( GauFilter0 != NULL ) {
			esc_trace_signal( &GauFilter0->i_clk, ( std::string(name()) + std::string( ".GauFilter.i_clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_rst, ( std::string(name()) + std::string( ".GauFilter.i_rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_r.busy, ( std::string(name()) + std::string( ".GauFilter.i_r.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_r.vld, ( std::string(name()) + std::string( ".GauFilter.i_r.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_r.data, ( std::string(name()) + std::string( ".GauFilter.i_r.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_g.busy, ( std::string(name()) + std::string( ".GauFilter.i_g.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_g.vld, ( std::string(name()) + std::string( ".GauFilter.i_g.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_g.data, ( std::string(name()) + std::string( ".GauFilter.i_g.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_b.busy, ( std::string(name()) + std::string( ".GauFilter.i_b.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_b.vld, ( std::string(name()) + std::string( ".GauFilter.i_b.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_b.data, ( std::string(name()) + std::string( ".GauFilter.i_b.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.busy, ( std::string(name()) + std::string( ".GauFilter.o_result.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.vld, ( std::string(name()) + std::string( ".GauFilter.o_result.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.data, ( std::string(name()) + std::string( ".GauFilter.o_result.data" ) ).c_str(), esc_trace_fsdb );
		}
	}
