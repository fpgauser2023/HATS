
`timescale 1 ns / 1 ps

	module sigmoid_axis_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXIS
		//input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  ap_clk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid
	);

	// Add user logic here
	
	reg last_set;
	wire reset_and_input_valid;
	
	always @(posedge ap_clk) begin
	   if (s00_axis_tvalid & s00_axis_tready) begin
	       last_set = s00_axis_tlast;
	   end else begin
	       last_set = last_set;
	   end
	end
	
	assign m00_axis_tlast = last_set & m00_axis_tvalid;
	assign reset_and_input_valid = m00_axis_aresetn & s00_axis_tvalid;
	
	assign m00_axis_tdata[C_M00_AXIS_TDATA_WIDTH-1 : 8] = 0;
	
	// Added UFSPT Implementation here
	UFSPT(
	   .clock(ap_clk),
	   .reset(m00_axis_aresetn),
       .io_input(s00_axis_tdata[7:0]),
       .io_input_valid(reset_and_input_valid),
       
       .io_output(m00_axis_tdata[7:0]),
       .io_output_valid(m00_axis_tvalid),
       .io_input_ready(s00_axis_tready),
       
       .io_dbg_state(),
       .io_dbg_init(),
       .io_dbg_comp(),
       .io_dbg_idx()
	);
	// User logic ends

	endmodule
