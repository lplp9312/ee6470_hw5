	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( GauFilter0 != NULL ) {
			esc_trace_signal( &GauFilter0->i_clk, ( std::string(name()) + std::string( ".GauFilter.i_clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_rst, ( std::string(name()) + std::string( ".GauFilter.i_rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_rgb.busy, ( std::string(name()) + std::string( ".GauFilter.i_rgb.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_rgb.vld, ( std::string(name()) + std::string( ".GauFilter.i_rgb.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->i_rgb.data, ( std::string(name()) + std::string( ".GauFilter.i_rgb.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.busy, ( std::string(name()) + std::string( ".GauFilter.o_result.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.vld, ( std::string(name()) + std::string( ".GauFilter.o_result.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GauFilter0->o_result.data, ( std::string(name()) + std::string( ".GauFilter.o_result.data" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( GauFilter0 != NULL ) {
			esc_trace_signal( &GauFilter0->i_clk, ( std::string(name()) + std::string( ".GauFilter.i_clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_rst, ( std::string(name()) + std::string( ".GauFilter.i_rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_rgb.busy, ( std::string(name()) + std::string( ".GauFilter.i_rgb.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_rgb.vld, ( std::string(name()) + std::string( ".GauFilter.i_rgb.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->i_rgb.data, ( std::string(name()) + std::string( ".GauFilter.i_rgb.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.busy, ( std::string(name()) + std::string( ".GauFilter.o_result.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.vld, ( std::string(name()) + std::string( ".GauFilter.o_result.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GauFilter0->o_result.data, ( std::string(name()) + std::string( ".GauFilter.o_result.data" ) ).c_str(), esc_trace_fsdb );
		}
	}
