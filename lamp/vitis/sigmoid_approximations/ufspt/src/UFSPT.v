module CheckBoundary(
  input  [7:0] io_x,
  input  [7:0] io_B_i,
  output       io_leq_B_i,
  output       io_gt_B_i
);
  assign io_leq_B_i = $signed(io_x) <= $signed(io_B_i); // @[Taylor.scala 159:25]
  assign io_gt_B_i = $signed(io_x) > $signed(io_B_i); // @[Taylor.scala 160:24]
endmodule
module BoundarySelect(
  input  [7:0] io_x,
  output [3:0] io_region
);
  wire [7:0] checkBoundaryModules_0_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_0_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_0_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_0_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_1_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_1_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_1_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_1_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_2_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_2_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_2_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_2_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_3_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_3_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_3_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_3_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_4_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_4_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_4_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_4_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_5_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_5_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_5_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_5_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_6_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_6_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_6_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_6_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_7_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_7_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_7_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_7_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_8_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_8_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_8_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_8_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_9_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_9_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_9_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_9_io_gt_B_i; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_10_io_x; // @[Taylor.scala 177:40]
  wire [7:0] checkBoundaryModules_10_io_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_10_io_leq_B_i; // @[Taylor.scala 177:40]
  wire  checkBoundaryModules_10_io_gt_B_i; // @[Taylor.scala 177:40]
  wire  OHencodedIdx_1 = checkBoundaryModules_0_io_gt_B_i & checkBoundaryModules_1_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_2 = checkBoundaryModules_1_io_gt_B_i & checkBoundaryModules_2_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_3 = checkBoundaryModules_2_io_gt_B_i & checkBoundaryModules_3_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_4 = checkBoundaryModules_3_io_gt_B_i & checkBoundaryModules_4_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_5 = checkBoundaryModules_4_io_gt_B_i & checkBoundaryModules_5_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_6 = checkBoundaryModules_5_io_gt_B_i & checkBoundaryModules_6_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_7 = checkBoundaryModules_6_io_gt_B_i & checkBoundaryModules_7_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_8 = checkBoundaryModules_7_io_gt_B_i & checkBoundaryModules_8_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_9 = checkBoundaryModules_8_io_gt_B_i & checkBoundaryModules_9_io_leq_B_i; // @[Taylor.scala 190:53]
  wire  OHencodedIdx_10 = checkBoundaryModules_9_io_gt_B_i & checkBoundaryModules_10_io_leq_B_i; // @[Taylor.scala 190:53]
  wire [5:0] io_region_lo = {OHencodedIdx_5,OHencodedIdx_4,OHencodedIdx_3,OHencodedIdx_2,OHencodedIdx_1,
    checkBoundaryModules_0_io_leq_B_i}; // @[Cat.scala 31:58]
  wire [11:0] _io_region_T = {checkBoundaryModules_10_io_gt_B_i,OHencodedIdx_10,OHencodedIdx_9,OHencodedIdx_8,
    OHencodedIdx_7,OHencodedIdx_6,io_region_lo}; // @[Cat.scala 31:58]
  wire [3:0] io_region_hi_1 = _io_region_T[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_region_lo_1 = _io_region_T[7:0]; // @[OneHot.scala 31:18]
  wire  _io_region_T_1 = |io_region_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_0 = {{4'd0}, io_region_hi_1}; // @[OneHot.scala 32:28]
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
  CheckBoundary checkBoundaryModules_0 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_0_io_x),
    .io_B_i(checkBoundaryModules_0_io_B_i),
    .io_leq_B_i(checkBoundaryModules_0_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_0_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_1 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_1_io_x),
    .io_B_i(checkBoundaryModules_1_io_B_i),
    .io_leq_B_i(checkBoundaryModules_1_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_1_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_2 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_2_io_x),
    .io_B_i(checkBoundaryModules_2_io_B_i),
    .io_leq_B_i(checkBoundaryModules_2_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_2_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_3 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_3_io_x),
    .io_B_i(checkBoundaryModules_3_io_B_i),
    .io_leq_B_i(checkBoundaryModules_3_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_3_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_4 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_4_io_x),
    .io_B_i(checkBoundaryModules_4_io_B_i),
    .io_leq_B_i(checkBoundaryModules_4_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_4_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_5 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_5_io_x),
    .io_B_i(checkBoundaryModules_5_io_B_i),
    .io_leq_B_i(checkBoundaryModules_5_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_5_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_6 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_6_io_x),
    .io_B_i(checkBoundaryModules_6_io_B_i),
    .io_leq_B_i(checkBoundaryModules_6_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_6_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_7 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_7_io_x),
    .io_B_i(checkBoundaryModules_7_io_B_i),
    .io_leq_B_i(checkBoundaryModules_7_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_7_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_8 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_8_io_x),
    .io_B_i(checkBoundaryModules_8_io_B_i),
    .io_leq_B_i(checkBoundaryModules_8_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_8_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_9 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_9_io_x),
    .io_B_i(checkBoundaryModules_9_io_B_i),
    .io_leq_B_i(checkBoundaryModules_9_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_9_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_10 ( // @[Taylor.scala 177:40]
    .io_x(checkBoundaryModules_10_io_x),
    .io_B_i(checkBoundaryModules_10_io_B_i),
    .io_leq_B_i(checkBoundaryModules_10_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_10_io_gt_B_i)
  );
  assign io_region = {_io_region_T_1,_io_region_T_9}; // @[Cat.scala 31:58]
  assign checkBoundaryModules_0_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_0_io_B_i = -8'sh60; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_1_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_1_io_B_i = -8'sh36; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_2_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_2_io_B_i = -8'sh29; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_3_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_3_io_B_i = -8'sh1b; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_4_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_4_io_B_i = -8'she; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_5_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_5_io_B_i = 8'sh0; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_6_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_6_io_B_i = 8'she; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_7_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_7_io_B_i = 8'sh1b; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_8_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_8_io_B_i = 8'sh29; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_9_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_9_io_B_i = 8'sh36; // @[Taylor.scala 179:35]
  assign checkBoundaryModules_10_io_x = io_x; // @[Taylor.scala 178:33]
  assign checkBoundaryModules_10_io_B_i = 8'sh60; // @[Taylor.scala 179:35]
endmodule
module ConstantSelect(
  input  [7:0] io_x,
  input  [1:0] io_order_idx,
  output [7:0] io_a_select,
  output [7:0] io_m_select
);
  wire [7:0] boundarySelect_io_x; // @[Taylor.scala 212:48]
  wire [3:0] boundarySelect_io_region; // @[Taylor.scala 212:48]
  wire [7:0] _GEN_2 = 4'h2 == boundarySelect_io_region ? $signed(8'sh30) : $signed(8'sh0); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_3 = 4'h3 == boundarySelect_io_region ? $signed(8'sh22) : $signed(_GEN_2); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_4 = 4'h4 == boundarySelect_io_region ? $signed(8'sh14) : $signed(_GEN_3); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_5 = 4'h5 == boundarySelect_io_region ? $signed(8'sh7) : $signed(_GEN_4); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_6 = 4'h6 == boundarySelect_io_region ? $signed(-8'sh7) : $signed(_GEN_5); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_7 = 4'h7 == boundarySelect_io_region ? $signed(-8'sh14) : $signed(_GEN_6); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_8 = 4'h8 == boundarySelect_io_region ? $signed(-8'sh22) : $signed(_GEN_7); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_9 = 4'h9 == boundarySelect_io_region ? $signed(-8'sh30) : $signed(_GEN_8); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_10 = 4'ha == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_9); // @[Taylor.scala 223:{17,17}]
  wire [7:0] _GEN_13 = 2'h0 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(8'sh1) : $signed(8'sh0); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_14 = 2'h0 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_13); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_15 = 2'h0 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(8'sh2) : $signed(_GEN_14); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_16 = 2'h0 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(8'sh3) : $signed(_GEN_15); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_17 = 2'h0 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(8'sh6) : $signed(_GEN_16); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_18 = 2'h0 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(8'sha) : $signed(_GEN_17); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_19 = 2'h0 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(8'shd) : $signed(_GEN_18); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_20 = 2'h0 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(8'she) : $signed(_GEN_19); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_21 = 2'h0 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(8'shf) : $signed(_GEN_20); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_22 = 2'h0 == io_order_idx & 4'ha == boundarySelect_io_region ? $signed(8'shf) : $signed(_GEN_21); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_23 = 2'h0 == io_order_idx & 4'hb == boundarySelect_io_region ? $signed(8'sh10) : $signed(_GEN_22); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_24 = 2'h1 == io_order_idx & 4'h0 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_23); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_25 = 2'h1 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_24); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_26 = 2'h1 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_25); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_27 = 2'h1 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_26); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_28 = 2'h1 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(8'sh2) : $signed(_GEN_27); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_29 = 2'h1 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(8'sh4) : $signed(_GEN_28); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_30 = 2'h1 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(8'sh4) : $signed(_GEN_29); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_31 = 2'h1 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(8'sh2) : $signed(_GEN_30); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_32 = 2'h1 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_31); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_33 = 2'h1 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_32); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_34 = 2'h1 == io_order_idx & 4'ha == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_33); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_35 = 2'h1 == io_order_idx & 4'hb == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_34); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_36 = 2'h2 == io_order_idx & 4'h0 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_35); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_37 = 2'h2 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_36); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_38 = 2'h2 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_37); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_39 = 2'h2 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_38); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_40 = 2'h2 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_39); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_41 = 2'h2 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(8'sh2) : $signed(_GEN_40); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_42 = 2'h2 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(-8'sh2) : $signed(_GEN_41); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_43 = 2'h2 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(-8'sh1) : $signed(_GEN_42); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_44 = 2'h2 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_43); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_45 = 2'h2 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_44); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_46 = 2'h2 == io_order_idx & 4'ha == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_45); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_47 = 2'h2 == io_order_idx & 4'hb == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_46); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_48 = 2'h3 == io_order_idx & 4'h0 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_47); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_49 = 2'h3 == io_order_idx & 4'h1 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_48); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_50 = 2'h3 == io_order_idx & 4'h2 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_49); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_51 = 2'h3 == io_order_idx & 4'h3 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_50); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_52 = 2'h3 == io_order_idx & 4'h4 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_51); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_53 = 2'h3 == io_order_idx & 4'h5 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_52); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_54 = 2'h3 == io_order_idx & 4'h6 == boundarySelect_io_region ? $signed(8'sh1) : $signed(_GEN_53); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_55 = 2'h3 == io_order_idx & 4'h7 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_54); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_56 = 2'h3 == io_order_idx & 4'h8 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_55); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_57 = 2'h3 == io_order_idx & 4'h9 == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_56); // @[Taylor.scala 224:{17,17}]
  wire [7:0] _GEN_58 = 2'h3 == io_order_idx & 4'ha == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_57); // @[Taylor.scala 224:{17,17}]
  BoundarySelect boundarySelect ( // @[Taylor.scala 212:48]
    .io_x(boundarySelect_io_x),
    .io_region(boundarySelect_io_region)
  );
  assign io_a_select = 4'hb == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_10); // @[Taylor.scala 223:{17,17}]
  assign io_m_select = 2'h3 == io_order_idx & 4'hb == boundarySelect_io_region ? $signed(8'sh0) : $signed(_GEN_58); // @[Taylor.scala 224:{17,17}]
  assign boundarySelect_io_x = io_x; // @[Taylor.scala 213:25]
endmodule
module TaylorExpansion(
  input        clock,
  input        reset,
  input        io_initialize,
  input        io_compute_enable,
  input  [7:0] io_xa,
  input  [7:0] io_mrn,
  output [7:0] io_output
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] processed_input; // @[Taylor.scala 241:40]
  reg [7:0] exponentiatial_accumulator; // @[Taylor.scala 242:51]
  reg [7:0] scalar; // @[Taylor.scala 243:31]
  reg [7:0] product_accumulator; // @[Taylor.scala 244:44]
  wire [15:0] _product_result_T = $signed(scalar) * $signed(exponentiatial_accumulator); // @[Taylor.scala 251:31]
  wire [11:0] _product_result_T_1 = _product_result_T[15:4]; // @[Taylor.scala 251:61]
  wire [15:0] _exponential_accumulator_output_T = $signed(exponentiatial_accumulator) * $signed(processed_input); // @[Taylor.scala 252:67]
  wire [11:0] _exponential_accumulator_output_T_1 = _exponential_accumulator_output_T[15:4]; // @[Taylor.scala 252:86]
  wire [7:0] product_result = _product_result_T_1[7:0]; // @[Taylor.scala 248:36 251:20]
  wire [7:0] _product_accumulator_T_2 = $signed(product_result) + $signed(product_accumulator); // @[Taylor.scala 264:47]
  wire [7:0] exponential_accumulator_output = _exponential_accumulator_output_T_1[7:0]; // @[Taylor.scala 247:52 252:36]
  assign io_output = product_accumulator; // @[Taylor.scala 253:15]
  always @(posedge clock) begin
    if (reset) begin // @[Taylor.scala 241:40]
      processed_input <= 8'sh0; // @[Taylor.scala 241:40]
    end else if (io_initialize) begin // @[Taylor.scala 255:26]
      processed_input <= io_xa; // @[Taylor.scala 256:25]
    end
    if (reset) begin // @[Taylor.scala 242:51]
      exponentiatial_accumulator <= 8'sh0; // @[Taylor.scala 242:51]
    end else if (io_initialize) begin // @[Taylor.scala 255:26]
      exponentiatial_accumulator <= 8'sh10; // @[Taylor.scala 257:36]
    end else if (io_compute_enable) begin // @[Taylor.scala 260:36]
      exponentiatial_accumulator <= exponential_accumulator_output; // @[Taylor.scala 262:36]
    end
    if (reset) begin // @[Taylor.scala 243:31]
      scalar <= 8'sh0; // @[Taylor.scala 243:31]
    end else if (io_initialize) begin // @[Taylor.scala 255:26]
      scalar <= io_mrn; // @[Taylor.scala 258:16]
    end else if (io_compute_enable) begin // @[Taylor.scala 260:36]
      scalar <= io_mrn; // @[Taylor.scala 263:16]
    end else begin
      scalar <= 8'sh0; // @[Taylor.scala 268:16]
    end
    if (reset) begin // @[Taylor.scala 244:44]
      product_accumulator <= 8'sh0; // @[Taylor.scala 244:44]
    end else if (io_initialize) begin // @[Taylor.scala 255:26]
      product_accumulator <= 8'sh0; // @[Taylor.scala 259:29]
    end else if (io_compute_enable) begin // @[Taylor.scala 260:36]
      product_accumulator <= _product_accumulator_T_2; // @[Taylor.scala 264:29]
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
  processed_input = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  exponentiatial_accumulator = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  scalar = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  product_accumulator = _RAND_3[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module UFSPT(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input        io_input_valid,
  output [7:0] io_output,
  output       io_output_valid,
  output       io_input_ready,
  output [2:0] io_dbg_state,
  output       io_dbg_init,
  output       io_dbg_comp,
  output [1:0] io_dbg_idx
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
  wire [7:0] constantSelect_io_x; // @[Taylor.scala 295:48]
  wire [1:0] constantSelect_io_order_idx; // @[Taylor.scala 295:48]
  wire [7:0] constantSelect_io_a_select; // @[Taylor.scala 295:48]
  wire [7:0] constantSelect_io_m_select; // @[Taylor.scala 295:48]
  wire  taylorExpansion_clock; // @[Taylor.scala 296:50]
  wire  taylorExpansion_reset; // @[Taylor.scala 296:50]
  wire  taylorExpansion_io_initialize; // @[Taylor.scala 296:50]
  wire  taylorExpansion_io_compute_enable; // @[Taylor.scala 296:50]
  wire [7:0] taylorExpansion_io_xa; // @[Taylor.scala 296:50]
  wire [7:0] taylorExpansion_io_mrn; // @[Taylor.scala 296:50]
  wire [7:0] taylorExpansion_io_output; // @[Taylor.scala 296:50]
  reg [1:0] current_state; // @[Taylor.scala 292:38]
  reg  input_ready_reg; // @[Taylor.scala 299:40]
  reg  output_valid_reg; // @[Taylor.scala 300:41]
  reg [7:0] input_reg; // @[Taylor.scala 301:34]
  reg [1:0] m_order_idx; // @[Taylor.scala 302:36]
  reg  initialize_taylor_reg; // @[Taylor.scala 305:46]
  reg  compute_enable_taylor_reg; // @[Taylor.scala 306:50]
  wire  _T = 2'h0 == current_state; // @[Taylor.scala 309:28]
  wire  _T_2 = 2'h1 == current_state; // @[Taylor.scala 309:28]
  wire  _T_3 = 2'h2 == current_state; // @[Taylor.scala 309:28]
  wire [1:0] _GEN_1 = m_order_idx == 2'h3 ? 2'h0 : 2'h2; // @[Taylor.scala 322:48 323:31 325:31]
  wire [1:0] _m_order_idx_T_1 = m_order_idx + 2'h1; // @[Taylor.scala 352:40]
  wire  _GEN_5 = _T_3 ? 1'h0 : input_ready_reg; // @[Taylor.scala 331:28 349:29 299:40]
  wire  _GEN_6 = _T_3 ? 1'h0 : output_valid_reg; // @[Taylor.scala 331:28 350:30 300:41]
  wire  _GEN_9 = _T_3 ? 1'h0 : initialize_taylor_reg; // @[Taylor.scala 331:28 353:35 305:46]
  wire  _GEN_10 = _T_3 | compute_enable_taylor_reg; // @[Taylor.scala 331:28 354:39 306:50]
  wire  _GEN_11 = _T_2 ? 1'h0 : _GEN_5; // @[Taylor.scala 331:28 341:29]
  wire  _GEN_12 = _T_2 ? 1'h0 : _GEN_6; // @[Taylor.scala 331:28 342:30]
  wire  _GEN_15 = _T_2 | _GEN_9; // @[Taylor.scala 331:28 345:35]
  wire  _GEN_17 = _T | _GEN_11; // @[Taylor.scala 331:28 333:29]
  wire  _GEN_18 = _T | _GEN_12; // @[Taylor.scala 331:28 334:30]
  ConstantSelect constantSelect ( // @[Taylor.scala 295:48]
    .io_x(constantSelect_io_x),
    .io_order_idx(constantSelect_io_order_idx),
    .io_a_select(constantSelect_io_a_select),
    .io_m_select(constantSelect_io_m_select)
  );
  TaylorExpansion taylorExpansion ( // @[Taylor.scala 296:50]
    .clock(taylorExpansion_clock),
    .reset(taylorExpansion_reset),
    .io_initialize(taylorExpansion_io_initialize),
    .io_compute_enable(taylorExpansion_io_compute_enable),
    .io_xa(taylorExpansion_io_xa),
    .io_mrn(taylorExpansion_io_mrn),
    .io_output(taylorExpansion_io_output)
  );
  assign io_output = taylorExpansion_io_output; // @[Taylor.scala 371:15]
  assign io_output_valid = output_valid_reg; // @[Taylor.scala 370:21]
  assign io_input_ready = input_ready_reg; // @[Taylor.scala 369:20]
  assign io_dbg_state = {{1'd0}, current_state}; // @[Taylor.scala 374:18]
  assign io_dbg_init = initialize_taylor_reg; // @[Taylor.scala 376:17]
  assign io_dbg_comp = compute_enable_taylor_reg; // @[Taylor.scala 375:17]
  assign io_dbg_idx = m_order_idx; // @[Taylor.scala 377:16]
  assign constantSelect_io_x = input_reg; // @[Taylor.scala 359:25]
  assign constantSelect_io_order_idx = m_order_idx; // @[Taylor.scala 360:33]
  assign taylorExpansion_clock = clock;
  assign taylorExpansion_reset = reset;
  assign taylorExpansion_io_initialize = initialize_taylor_reg; // @[Taylor.scala 366:35]
  assign taylorExpansion_io_compute_enable = compute_enable_taylor_reg; // @[Taylor.scala 365:39]
  assign taylorExpansion_io_xa = $signed(constantSelect_io_a_select) + $signed(io_input); // @[Taylor.scala 364:57]
  assign taylorExpansion_io_mrn = constantSelect_io_m_select; // @[Taylor.scala 362:28]
  always @(posedge clock) begin
    if (reset) begin // @[Taylor.scala 292:38]
      current_state <= 2'h0; // @[Taylor.scala 292:38]
    end else if (2'h0 == current_state) begin // @[Taylor.scala 309:28]
      if (io_input_valid & input_ready_reg) begin // @[Taylor.scala 311:53]
        current_state <= 2'h1; // @[Taylor.scala 312:31]
      end else begin
        current_state <= 2'h0; // @[Taylor.scala 314:31]
      end
    end else if (2'h1 == current_state) begin // @[Taylor.scala 309:28]
      current_state <= 2'h2; // @[Taylor.scala 318:27]
    end else if (2'h2 == current_state) begin // @[Taylor.scala 309:28]
      current_state <= _GEN_1;
    end
    input_ready_reg <= reset | _GEN_17; // @[Taylor.scala 299:{40,40}]
    if (reset) begin // @[Taylor.scala 300:41]
      output_valid_reg <= 1'h0; // @[Taylor.scala 300:41]
    end else begin
      output_valid_reg <= _GEN_18;
    end
    if (reset) begin // @[Taylor.scala 301:34]
      input_reg <= 8'sh0; // @[Taylor.scala 301:34]
    end else if (!(_T)) begin // @[Taylor.scala 331:28]
      if (_T_2) begin // @[Taylor.scala 331:28]
        input_reg <= io_input; // @[Taylor.scala 343:23]
      end
    end
    if (reset) begin // @[Taylor.scala 302:36]
      m_order_idx <= 2'h0; // @[Taylor.scala 302:36]
    end else if (_T) begin // @[Taylor.scala 331:28]
      m_order_idx <= 2'h0; // @[Taylor.scala 336:25]
    end else if (_T_2) begin // @[Taylor.scala 331:28]
      m_order_idx <= 2'h0; // @[Taylor.scala 344:25]
    end else if (_T_3) begin // @[Taylor.scala 331:28]
      m_order_idx <= _m_order_idx_T_1; // @[Taylor.scala 352:25]
    end
    if (reset) begin // @[Taylor.scala 305:46]
      initialize_taylor_reg <= 1'h0; // @[Taylor.scala 305:46]
    end else if (_T) begin // @[Taylor.scala 331:28]
      initialize_taylor_reg <= 1'h0; // @[Taylor.scala 337:35]
    end else begin
      initialize_taylor_reg <= _GEN_15;
    end
    if (reset) begin // @[Taylor.scala 306:50]
      compute_enable_taylor_reg <= 1'h0; // @[Taylor.scala 306:50]
    end else if (_T) begin // @[Taylor.scala 331:28]
      compute_enable_taylor_reg <= 1'h0; // @[Taylor.scala 338:39]
    end else if (_T_2) begin // @[Taylor.scala 331:28]
      compute_enable_taylor_reg <= 1'h0; // @[Taylor.scala 346:39]
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
  input_reg = _RAND_3[7:0];
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
