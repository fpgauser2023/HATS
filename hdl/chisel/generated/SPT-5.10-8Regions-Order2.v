module CheckBoundary(
  input  [14:0] io_x,
  input  [14:0] io_B_i,
  output        io_leq_B_i,
  output        io_gt_B_i
);
  assign io_leq_B_i = $signed(io_x) <= $signed(io_B_i); // @[SPT.scala 142:25]
  assign io_gt_B_i = $signed(io_x) > $signed(io_B_i); // @[SPT.scala 143:24]
endmodule
module BoundarySelect(
  input  [14:0] io_x,
  output [3:0]  io_region
);
  wire [14:0] checkBoundaryModules_0_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_0_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_0_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_0_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_1_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_1_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_1_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_1_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_2_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_2_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_2_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_2_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_3_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_3_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_3_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_3_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_4_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_4_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_4_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_4_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_5_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_5_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_5_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_5_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_6_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_6_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_6_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_6_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_7_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_7_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_7_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_7_io_gt_B_i; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_8_io_x; // @[SPT.scala 160:40]
  wire [14:0] checkBoundaryModules_8_io_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_8_io_leq_B_i; // @[SPT.scala 160:40]
  wire  checkBoundaryModules_8_io_gt_B_i; // @[SPT.scala 160:40]
  wire  OHencodedIdx_1 = checkBoundaryModules_0_io_gt_B_i & checkBoundaryModules_1_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_2 = checkBoundaryModules_1_io_gt_B_i & checkBoundaryModules_2_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_3 = checkBoundaryModules_2_io_gt_B_i & checkBoundaryModules_3_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_4 = checkBoundaryModules_3_io_gt_B_i & checkBoundaryModules_4_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_5 = checkBoundaryModules_4_io_gt_B_i & checkBoundaryModules_5_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_6 = checkBoundaryModules_5_io_gt_B_i & checkBoundaryModules_6_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_7 = checkBoundaryModules_6_io_gt_B_i & checkBoundaryModules_7_io_leq_B_i; // @[SPT.scala 173:53]
  wire  OHencodedIdx_8 = checkBoundaryModules_7_io_gt_B_i & checkBoundaryModules_8_io_leq_B_i; // @[SPT.scala 173:53]
  wire [9:0] _io_region_T = {checkBoundaryModules_8_io_gt_B_i,OHencodedIdx_8,OHencodedIdx_7,OHencodedIdx_6,
    OHencodedIdx_5,OHencodedIdx_4,OHencodedIdx_3,OHencodedIdx_2,OHencodedIdx_1,checkBoundaryModules_0_io_leq_B_i}; // @[Cat.scala 31:58]
  wire [1:0] io_region_hi_1 = _io_region_T[9:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_region_lo_1 = _io_region_T[7:0]; // @[OneHot.scala 31:18]
  wire  _io_region_T_1 = |io_region_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_0 = {{6'd0}, io_region_hi_1}; // @[OneHot.scala 32:28]
  wire [7:0] _io_region_T_2 = _GEN_0 | io_region_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] io_region_hi_2 = _io_region_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_region_lo_2 = _io_region_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _io_region_T_3 = |io_region_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _io_region_T_4 = io_region_hi_2 | io_region_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] io_region_hi_3 = _io_region_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_region_lo_3 = _io_region_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _io_region_T_5 = |io_region_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _io_region_T_6 = io_region_hi_3 | io_region_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _io_region_T_9 = {_io_region_T_3,_io_region_T_5,_io_region_T_6[1]}; // @[Cat.scala 31:58]
  CheckBoundary checkBoundaryModules_0 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_0_io_x),
    .io_B_i(checkBoundaryModules_0_io_B_i),
    .io_leq_B_i(checkBoundaryModules_0_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_0_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_1 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_1_io_x),
    .io_B_i(checkBoundaryModules_1_io_B_i),
    .io_leq_B_i(checkBoundaryModules_1_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_1_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_2 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_2_io_x),
    .io_B_i(checkBoundaryModules_2_io_B_i),
    .io_leq_B_i(checkBoundaryModules_2_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_2_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_3 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_3_io_x),
    .io_B_i(checkBoundaryModules_3_io_B_i),
    .io_leq_B_i(checkBoundaryModules_3_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_3_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_4 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_4_io_x),
    .io_B_i(checkBoundaryModules_4_io_B_i),
    .io_leq_B_i(checkBoundaryModules_4_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_4_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_5 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_5_io_x),
    .io_B_i(checkBoundaryModules_5_io_B_i),
    .io_leq_B_i(checkBoundaryModules_5_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_5_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_6 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_6_io_x),
    .io_B_i(checkBoundaryModules_6_io_B_i),
    .io_leq_B_i(checkBoundaryModules_6_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_6_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_7 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_7_io_x),
    .io_B_i(checkBoundaryModules_7_io_B_i),
    .io_leq_B_i(checkBoundaryModules_7_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_7_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_8 ( // @[SPT.scala 160:40]
    .io_x(checkBoundaryModules_8_io_x),
    .io_B_i(checkBoundaryModules_8_io_B_i),
    .io_leq_B_i(checkBoundaryModules_8_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_8_io_gt_B_i)
  );
  assign io_region = {_io_region_T_1,_io_region_T_9}; // @[Cat.scala 31:58]
  assign checkBoundaryModules_0_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_0_io_B_i = -15'sh1800; // @[SPT.scala 162:35]
  assign checkBoundaryModules_1_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_1_io_B_i = -15'sh1800; // @[SPT.scala 162:35]
  assign checkBoundaryModules_2_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_2_io_B_i = -15'sh1000; // @[SPT.scala 162:35]
  assign checkBoundaryModules_3_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_3_io_B_i = -15'sh800; // @[SPT.scala 162:35]
  assign checkBoundaryModules_4_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_4_io_B_i = 15'sh0; // @[SPT.scala 162:35]
  assign checkBoundaryModules_5_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_5_io_B_i = 15'sh800; // @[SPT.scala 162:35]
  assign checkBoundaryModules_6_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_6_io_B_i = 15'sh1000; // @[SPT.scala 162:35]
  assign checkBoundaryModules_7_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_7_io_B_i = 15'sh1800; // @[SPT.scala 162:35]
  assign checkBoundaryModules_8_io_x = io_x; // @[SPT.scala 161:33]
  assign checkBoundaryModules_8_io_B_i = 15'sh1800; // @[SPT.scala 162:35]
endmodule
module ConstantSelect(
  input  [14:0] io_x,
  input  [1:0]  io_order_idx,
  output [14:0] io_a_select,
  output [14:0] io_m_select
);
  wire [14:0] boundarySelect_io_x; // @[SPT.scala 194:48]
  wire [3:0] boundarySelect_io_region; // @[SPT.scala 194:48]
  wire [14:0] _GEN_1 = 4'h1 == boundarySelect_io_region ? $signed(15'sh1800) : $signed(15'sh0); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_2 = 4'h2 == boundarySelect_io_region ? $signed(15'sh1400) : $signed(_GEN_1); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_3 = 4'h3 == boundarySelect_io_region ? $signed(15'shc00) : $signed(_GEN_2); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_4 = 4'h4 == boundarySelect_io_region ? $signed(15'sh400) : $signed(_GEN_3); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_5 = 4'h5 == boundarySelect_io_region ? $signed(-15'sh400) : $signed(_GEN_4); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_6 = 4'h6 == boundarySelect_io_region ? $signed(-15'shc00) : $signed(_GEN_5); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_7 = 4'h7 == boundarySelect_io_region ? $signed(-15'sh1400) : $signed(_GEN_6); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_8 = 4'h8 == boundarySelect_io_region ? $signed(-15'sh1800) : $signed(_GEN_7); // @[SPT.scala 205:{17,17}]
  wire [14:0] _GEN_12 = 2'h0 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(15'sh7) : $signed(15'sh0); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_13 = 2'h0 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(15'sh31) : $signed(_GEN_12); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_14 = 2'h0 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(15'sh113) : $signed(_GEN_13); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_15 = 2'h0 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(15'sh2ed) : $signed(_GEN_14); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_16 = 2'h0 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(15'sh3cf) : $signed(_GEN_15); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_17 = 2'h0 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(15'sh3f9) : $signed(_GEN_16); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_18 = 2'h0 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(15'sh3fd) : $signed(_GEN_17); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_19 = 2'h0 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(15'sh400) : $signed(_GEN_18); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_20 = 2'h1 == io_order_idx & 4'h0 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_19); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_21 = 2'h1 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_20); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_22 = 2'h1 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(15'sh7) : $signed(_GEN_21); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_23 = 2'h1 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(15'sh2e) : $signed(_GEN_22); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_24 = 2'h1 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(15'shc9) : $signed(_GEN_23); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_25 = 2'h1 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(15'shc9) : $signed(_GEN_24); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_26 = 2'h1 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(15'sh2e) : $signed(_GEN_25); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_27 = 2'h1 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(15'sh7) : $signed(_GEN_26); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_28 = 2'h1 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(15'sh3) : $signed(_GEN_27); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_29 = 2'h1 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_28); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_30 = 2'h2 == io_order_idx & 4'h0 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_29); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_31 = 2'h2 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_30); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_32 = 2'h2 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(15'sh3) : $signed(_GEN_31); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_33 = 2'h2 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(15'sh15) : $signed(_GEN_32); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_34 = 2'h2 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(15'sh2f) : $signed(_GEN_33); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_35 = 2'h2 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(-15'sh2f) : $signed(_GEN_34); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_36 = 2'h2 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(-15'sh15) : $signed(_GEN_35); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_37 = 2'h2 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(-15'sh3) : $signed(_GEN_36); // @[SPT.scala 206:{17,17}]
  wire [14:0] _GEN_38 = 2'h2 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(-15'sh1) : $signed(_GEN_37); // @[SPT.scala 206:{17,17}]
  BoundarySelect boundarySelect ( // @[SPT.scala 194:48]
    .io_x(boundarySelect_io_x),
    .io_region(boundarySelect_io_region)
  );
  assign io_a_select = 4'h9 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_8); // @[SPT.scala 205:{17,17}]
  assign io_m_select = 2'h2 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(15'sh0) : $signed(_GEN_38); // @[SPT.scala 206:{17,17}]
  assign boundarySelect_io_x = io_x; // @[SPT.scala 195:25]
endmodule
module TaylorExpansion(
  input         clock,
  input         reset,
  input         io_initialize,
  input         io_compute_enable,
  input  [14:0] io_xa,
  input  [14:0] io_mrn,
  output [14:0] io_output
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] processed_input; // @[SPT.scala 223:40]
  reg [14:0] exponential_accumulator; // @[SPT.scala 224:48]
  reg [14:0] scalar; // @[SPT.scala 225:31]
  reg [14:0] product_accumulator; // @[SPT.scala 226:44]
  wire [29:0] _product_result_T = $signed(scalar) * $signed(exponential_accumulator); // @[SPT.scala 233:31]
  wire [19:0] _product_result_T_1 = _product_result_T[29:10]; // @[SPT.scala 233:58]
  wire [29:0] _exponential_accumulator_output_T = $signed(exponential_accumulator) * $signed(processed_input); // @[SPT.scala 234:64]
  wire [19:0] _exponential_accumulator_output_T_1 = _exponential_accumulator_output_T[29:10]; // @[SPT.scala 234:83]
  wire [14:0] product_result = _product_result_T_1[14:0]; // @[SPT.scala 230:36 233:20]
  wire [14:0] _product_accumulator_T_2 = $signed(product_result) + $signed(product_accumulator); // @[SPT.scala 246:47]
  wire [14:0] exponential_accumulator_output = _exponential_accumulator_output_T_1[14:0]; // @[SPT.scala 229:52 234:36]
  assign io_output = product_accumulator; // @[SPT.scala 235:15]
  always @(posedge clock) begin
    if (reset) begin // @[SPT.scala 223:40]
      processed_input <= 15'sh0; // @[SPT.scala 223:40]
    end else if (io_initialize) begin // @[SPT.scala 237:26]
      processed_input <= io_xa; // @[SPT.scala 238:25]
    end
    if (reset) begin // @[SPT.scala 224:48]
      exponential_accumulator <= 15'sh0; // @[SPT.scala 224:48]
    end else if (io_initialize) begin // @[SPT.scala 237:26]
      exponential_accumulator <= 15'sh400; // @[SPT.scala 239:33]
    end else if (io_compute_enable) begin // @[SPT.scala 242:36]
      exponential_accumulator <= exponential_accumulator_output; // @[SPT.scala 244:33]
    end
    if (reset) begin // @[SPT.scala 225:31]
      scalar <= 15'sh0; // @[SPT.scala 225:31]
    end else if (io_initialize) begin // @[SPT.scala 237:26]
      scalar <= io_mrn; // @[SPT.scala 240:16]
    end else if (io_compute_enable) begin // @[SPT.scala 242:36]
      scalar <= io_mrn; // @[SPT.scala 245:16]
    end else begin
      scalar <= 15'sh0; // @[SPT.scala 250:16]
    end
    if (reset) begin // @[SPT.scala 226:44]
      product_accumulator <= 15'sh0; // @[SPT.scala 226:44]
    end else if (io_initialize) begin // @[SPT.scala 237:26]
      product_accumulator <= 15'sh0; // @[SPT.scala 241:29]
    end else if (io_compute_enable) begin // @[SPT.scala 242:36]
      product_accumulator <= _product_accumulator_T_2; // @[SPT.scala 246:29]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  processed_input = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  exponential_accumulator = _RAND_1[14:0];
  _RAND_2 = {1{`RANDOM}};
  scalar = _RAND_2[14:0];
  _RAND_3 = {1{`RANDOM}};
  product_accumulator = _RAND_3[14:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SPT(
  input         clock,
  input         reset,
  input  [14:0] io_input,
  input         io_input_valid,
  output [14:0] io_output,
  output        io_output_valid,
  output        io_input_ready,
  output [2:0]  io_dbg_state,
  output        io_dbg_init,
  output        io_dbg_comp,
  output [1:0]  io_dbg_idx
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire [14:0] constantSelect_io_x; // @[SPT.scala 277:48]
  wire [1:0] constantSelect_io_order_idx; // @[SPT.scala 277:48]
  wire [14:0] constantSelect_io_a_select; // @[SPT.scala 277:48]
  wire [14:0] constantSelect_io_m_select; // @[SPT.scala 277:48]
  wire  taylorExpansion_clock; // @[SPT.scala 278:50]
  wire  taylorExpansion_reset; // @[SPT.scala 278:50]
  wire  taylorExpansion_io_initialize; // @[SPT.scala 278:50]
  wire  taylorExpansion_io_compute_enable; // @[SPT.scala 278:50]
  wire [14:0] taylorExpansion_io_xa; // @[SPT.scala 278:50]
  wire [14:0] taylorExpansion_io_mrn; // @[SPT.scala 278:50]
  wire [14:0] taylorExpansion_io_output; // @[SPT.scala 278:50]
  reg [1:0] current_state; // @[SPT.scala 274:38]
  reg  input_ready_reg; // @[SPT.scala 281:40]
  reg  output_valid_reg; // @[SPT.scala 282:41]
  reg [14:0] input_reg; // @[SPT.scala 283:34]
  reg [1:0] m_order_idx; // @[SPT.scala 284:36]
  reg  initialize_taylor_reg; // @[SPT.scala 287:46]
  reg  compute_enable_taylor_reg; // @[SPT.scala 288:50]
  wire  _T = 2'h0 == current_state; // @[SPT.scala 291:28]
  wire  _T_2 = 2'h1 == current_state; // @[SPT.scala 291:28]
  wire  _T_3 = 2'h2 == current_state; // @[SPT.scala 291:28]
  wire [1:0] _GEN_1 = m_order_idx == 2'h2 ? 2'h0 : 2'h2; // @[SPT.scala 304:48 305:31 307:31]
  wire [1:0] _m_order_idx_T_1 = m_order_idx + 2'h1; // @[SPT.scala 334:40]
  wire  _GEN_5 = _T_3 ? 1'h0 : input_ready_reg; // @[SPT.scala 313:28 331:29 281:40]
  wire  _GEN_6 = _T_3 ? 1'h0 : output_valid_reg; // @[SPT.scala 313:28 332:30 282:41]
  wire  _GEN_9 = _T_3 ? 1'h0 : initialize_taylor_reg; // @[SPT.scala 313:28 335:35 287:46]
  wire  _GEN_10 = _T_3 | compute_enable_taylor_reg; // @[SPT.scala 313:28 336:39 288:50]
  wire  _GEN_11 = _T_2 ? 1'h0 : _GEN_5; // @[SPT.scala 313:28 323:29]
  wire  _GEN_12 = _T_2 ? 1'h0 : _GEN_6; // @[SPT.scala 313:28 324:30]
  wire  _GEN_15 = _T_2 | _GEN_9; // @[SPT.scala 313:28 327:35]
  wire  _GEN_17 = _T | _GEN_11; // @[SPT.scala 313:28 315:29]
  wire  _GEN_18 = _T | _GEN_12; // @[SPT.scala 313:28 316:30]
  ConstantSelect constantSelect ( // @[SPT.scala 277:48]
    .io_x(constantSelect_io_x),
    .io_order_idx(constantSelect_io_order_idx),
    .io_a_select(constantSelect_io_a_select),
    .io_m_select(constantSelect_io_m_select)
  );
  TaylorExpansion taylorExpansion ( // @[SPT.scala 278:50]
    .clock(taylorExpansion_clock),
    .reset(taylorExpansion_reset),
    .io_initialize(taylorExpansion_io_initialize),
    .io_compute_enable(taylorExpansion_io_compute_enable),
    .io_xa(taylorExpansion_io_xa),
    .io_mrn(taylorExpansion_io_mrn),
    .io_output(taylorExpansion_io_output)
  );
  assign io_output = taylorExpansion_io_output; // @[SPT.scala 353:15]
  assign io_output_valid = output_valid_reg; // @[SPT.scala 352:21]
  assign io_input_ready = input_ready_reg; // @[SPT.scala 351:20]
  assign io_dbg_state = {{1'd0}, current_state}; // @[SPT.scala 356:18]
  assign io_dbg_init = initialize_taylor_reg; // @[SPT.scala 358:17]
  assign io_dbg_comp = compute_enable_taylor_reg; // @[SPT.scala 357:17]
  assign io_dbg_idx = m_order_idx; // @[SPT.scala 359:16]
  assign constantSelect_io_x = input_reg; // @[SPT.scala 341:25]
  assign constantSelect_io_order_idx = m_order_idx; // @[SPT.scala 342:33]
  assign taylorExpansion_clock = clock;
  assign taylorExpansion_reset = reset;
  assign taylorExpansion_io_initialize = initialize_taylor_reg; // @[SPT.scala 348:35]
  assign taylorExpansion_io_compute_enable = compute_enable_taylor_reg; // @[SPT.scala 347:39]
  assign taylorExpansion_io_xa = $signed(io_input) + $signed(constantSelect_io_a_select); // @[SPT.scala 346:39]
  assign taylorExpansion_io_mrn = constantSelect_io_m_select; // @[SPT.scala 344:28]
  always @(posedge clock) begin
    if (reset) begin // @[SPT.scala 274:38]
      current_state <= 2'h0; // @[SPT.scala 274:38]
    end else if (2'h0 == current_state) begin // @[SPT.scala 291:28]
      if (io_input_valid & input_ready_reg) begin // @[SPT.scala 293:53]
        current_state <= 2'h1; // @[SPT.scala 294:31]
      end else begin
        current_state <= 2'h0; // @[SPT.scala 296:31]
      end
    end else if (2'h1 == current_state) begin // @[SPT.scala 291:28]
      current_state <= 2'h2; // @[SPT.scala 300:27]
    end else if (2'h2 == current_state) begin // @[SPT.scala 291:28]
      current_state <= _GEN_1;
    end
    input_ready_reg <= reset | _GEN_17; // @[SPT.scala 281:{40,40}]
    if (reset) begin // @[SPT.scala 282:41]
      output_valid_reg <= 1'h0; // @[SPT.scala 282:41]
    end else begin
      output_valid_reg <= _GEN_18;
    end
    if (reset) begin // @[SPT.scala 283:34]
      input_reg <= 15'sh0; // @[SPT.scala 283:34]
    end else if (!(_T)) begin // @[SPT.scala 313:28]
      if (_T_2) begin // @[SPT.scala 313:28]
        input_reg <= io_input; // @[SPT.scala 325:23]
      end
    end
    if (reset) begin // @[SPT.scala 284:36]
      m_order_idx <= 2'h0; // @[SPT.scala 284:36]
    end else if (_T) begin // @[SPT.scala 313:28]
      m_order_idx <= 2'h0; // @[SPT.scala 318:25]
    end else if (_T_2) begin // @[SPT.scala 313:28]
      m_order_idx <= 2'h0; // @[SPT.scala 326:25]
    end else if (_T_3) begin // @[SPT.scala 313:28]
      m_order_idx <= _m_order_idx_T_1; // @[SPT.scala 334:25]
    end
    if (reset) begin // @[SPT.scala 287:46]
      initialize_taylor_reg <= 1'h0; // @[SPT.scala 287:46]
    end else if (_T) begin // @[SPT.scala 313:28]
      initialize_taylor_reg <= 1'h0; // @[SPT.scala 319:35]
    end else begin
      initialize_taylor_reg <= _GEN_15;
    end
    if (reset) begin // @[SPT.scala 288:50]
      compute_enable_taylor_reg <= 1'h0; // @[SPT.scala 288:50]
    end else if (_T) begin // @[SPT.scala 313:28]
      compute_enable_taylor_reg <= 1'h0; // @[SPT.scala 320:39]
    end else if (_T_2) begin // @[SPT.scala 313:28]
      compute_enable_taylor_reg <= 1'h0; // @[SPT.scala 328:39]
    end else begin
      compute_enable_taylor_reg <= _GEN_10;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  current_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  input_ready_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  output_valid_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  input_reg = _RAND_3[14:0];
  _RAND_4 = {1{`RANDOM}};
  m_order_idx = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  initialize_taylor_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  compute_enable_taylor_reg = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
