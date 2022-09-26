module CheckBoundary(
  input  [14:0] io_x,
  input  [14:0] io_B_i,
  output        io_leq_B_i,
  output        io_gt_B_i
);
  assign io_leq_B_i = $signed(io_x) <= $signed(io_B_i); // @[Linear.scala 114:25]
  assign io_gt_B_i = $signed(io_x) > $signed(io_B_i); // @[Linear.scala 115:24]
endmodule
module BoundarySelect(
  input  [14:0] io_x,
  output [3:0]  io_idx
);
  wire [14:0] checkBoundaryModules_0_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_0_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_0_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_0_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_1_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_1_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_1_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_1_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_2_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_2_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_2_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_2_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_3_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_3_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_3_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_3_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_4_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_4_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_4_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_4_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_5_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_5_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_5_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_5_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_6_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_6_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_6_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_6_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_7_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_7_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_7_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_7_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_8_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_8_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_8_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_8_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_9_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_9_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_9_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_9_io_gt_B_i; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_10_io_x; // @[Linear.scala 132:40]
  wire [14:0] checkBoundaryModules_10_io_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_10_io_leq_B_i; // @[Linear.scala 132:40]
  wire  checkBoundaryModules_10_io_gt_B_i; // @[Linear.scala 132:40]
  wire  OHencodedIdx_1 = checkBoundaryModules_0_io_gt_B_i & checkBoundaryModules_1_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_2 = checkBoundaryModules_1_io_gt_B_i & checkBoundaryModules_2_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_3 = checkBoundaryModules_2_io_gt_B_i & checkBoundaryModules_3_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_4 = checkBoundaryModules_3_io_gt_B_i & checkBoundaryModules_4_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_5 = checkBoundaryModules_4_io_gt_B_i & checkBoundaryModules_5_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_6 = checkBoundaryModules_5_io_gt_B_i & checkBoundaryModules_6_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_7 = checkBoundaryModules_6_io_gt_B_i & checkBoundaryModules_7_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_8 = checkBoundaryModules_7_io_gt_B_i & checkBoundaryModules_8_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_9 = checkBoundaryModules_8_io_gt_B_i & checkBoundaryModules_9_io_leq_B_i; // @[Linear.scala 145:53]
  wire  OHencodedIdx_10 = checkBoundaryModules_9_io_gt_B_i & checkBoundaryModules_10_io_leq_B_i; // @[Linear.scala 145:53]
  wire [5:0] io_idx_lo = {OHencodedIdx_5,OHencodedIdx_4,OHencodedIdx_3,OHencodedIdx_2,OHencodedIdx_1,
    checkBoundaryModules_0_io_leq_B_i}; // @[Cat.scala 31:58]
  wire [11:0] _io_idx_T = {checkBoundaryModules_10_io_gt_B_i,OHencodedIdx_10,OHencodedIdx_9,OHencodedIdx_8,
    OHencodedIdx_7,OHencodedIdx_6,io_idx_lo}; // @[Cat.scala 31:58]
  wire [3:0] io_idx_hi_1 = _io_idx_T[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_idx_lo_1 = _io_idx_T[7:0]; // @[OneHot.scala 31:18]
  wire  _io_idx_T_1 = |io_idx_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_0 = {{4'd0}, io_idx_hi_1}; // @[OneHot.scala 32:28]
  wire [7:0] _io_idx_T_2 = _GEN_0 | io_idx_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] io_idx_hi_2 = _io_idx_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_idx_lo_2 = _io_idx_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _io_idx_T_3 = |io_idx_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _io_idx_T_4 = io_idx_hi_2 | io_idx_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] io_idx_hi_3 = _io_idx_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_idx_lo_3 = _io_idx_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _io_idx_T_5 = |io_idx_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _io_idx_T_6 = io_idx_hi_3 | io_idx_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _io_idx_T_9 = {_io_idx_T_3,_io_idx_T_5,_io_idx_T_6[1]}; // @[Cat.scala 31:58]
  CheckBoundary checkBoundaryModules_0 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_0_io_x),
    .io_B_i(checkBoundaryModules_0_io_B_i),
    .io_leq_B_i(checkBoundaryModules_0_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_0_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_1 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_1_io_x),
    .io_B_i(checkBoundaryModules_1_io_B_i),
    .io_leq_B_i(checkBoundaryModules_1_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_1_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_2 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_2_io_x),
    .io_B_i(checkBoundaryModules_2_io_B_i),
    .io_leq_B_i(checkBoundaryModules_2_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_2_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_3 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_3_io_x),
    .io_B_i(checkBoundaryModules_3_io_B_i),
    .io_leq_B_i(checkBoundaryModules_3_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_3_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_4 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_4_io_x),
    .io_B_i(checkBoundaryModules_4_io_B_i),
    .io_leq_B_i(checkBoundaryModules_4_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_4_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_5 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_5_io_x),
    .io_B_i(checkBoundaryModules_5_io_B_i),
    .io_leq_B_i(checkBoundaryModules_5_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_5_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_6 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_6_io_x),
    .io_B_i(checkBoundaryModules_6_io_B_i),
    .io_leq_B_i(checkBoundaryModules_6_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_6_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_7 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_7_io_x),
    .io_B_i(checkBoundaryModules_7_io_B_i),
    .io_leq_B_i(checkBoundaryModules_7_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_7_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_8 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_8_io_x),
    .io_B_i(checkBoundaryModules_8_io_B_i),
    .io_leq_B_i(checkBoundaryModules_8_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_8_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_9 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_9_io_x),
    .io_B_i(checkBoundaryModules_9_io_B_i),
    .io_leq_B_i(checkBoundaryModules_9_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_9_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_10 ( // @[Linear.scala 132:40]
    .io_x(checkBoundaryModules_10_io_x),
    .io_B_i(checkBoundaryModules_10_io_B_i),
    .io_leq_B_i(checkBoundaryModules_10_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_10_io_gt_B_i)
  );
  assign io_idx = {_io_idx_T_1,_io_idx_T_9}; // @[Cat.scala 31:58]
  assign checkBoundaryModules_0_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_0_io_B_i = -15'sh1800; // @[Linear.scala 134:35]
  assign checkBoundaryModules_1_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_1_io_B_i = -15'shd9a; // @[Linear.scala 134:35]
  assign checkBoundaryModules_2_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_2_io_B_i = -15'sha33; // @[Linear.scala 134:35]
  assign checkBoundaryModules_3_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_3_io_B_i = -15'sh6cd; // @[Linear.scala 134:35]
  assign checkBoundaryModules_4_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_4_io_B_i = -15'sh366; // @[Linear.scala 134:35]
  assign checkBoundaryModules_5_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_5_io_B_i = 15'sh0; // @[Linear.scala 134:35]
  assign checkBoundaryModules_6_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_6_io_B_i = 15'sh366; // @[Linear.scala 134:35]
  assign checkBoundaryModules_7_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_7_io_B_i = 15'sh6cd; // @[Linear.scala 134:35]
  assign checkBoundaryModules_8_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_8_io_B_i = 15'sha33; // @[Linear.scala 134:35]
  assign checkBoundaryModules_9_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_9_io_B_i = 15'shd9a; // @[Linear.scala 134:35]
  assign checkBoundaryModules_10_io_x = io_x; // @[Linear.scala 133:33]
  assign checkBoundaryModules_10_io_B_i = 15'sh1800; // @[Linear.scala 134:35]
endmodule
module ConstantSelect(
  input  [14:0] io_x,
  output [14:0] io_a_select,
  output [14:0] io_b_select,
  output [14:0] io_m_select
);
  wire [14:0] boundarySelect_io_x; // @[Linear.scala 166:48]
  wire [3:0] boundarySelect_io_idx; // @[Linear.scala 166:48]
  wire [14:0] _GEN_2 = 4'h2 == boundarySelect_io_idx ? $signed(15'shbe6) : $signed(15'sh0); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_3 = 4'h3 == boundarySelect_io_idx ? $signed(15'sh880) : $signed(_GEN_2); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_4 = 4'h4 == boundarySelect_io_idx ? $signed(15'sh51a) : $signed(_GEN_3); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_5 = 4'h5 == boundarySelect_io_idx ? $signed(15'sh1b3) : $signed(_GEN_4); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_6 = 4'h6 == boundarySelect_io_idx ? $signed(-15'sh1b3) : $signed(_GEN_5); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_7 = 4'h7 == boundarySelect_io_idx ? $signed(-15'sh51a) : $signed(_GEN_6); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_8 = 4'h8 == boundarySelect_io_idx ? $signed(-15'sh880) : $signed(_GEN_7); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_9 = 4'h9 == boundarySelect_io_idx ? $signed(-15'shbe6) : $signed(_GEN_8); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_10 = 4'ha == boundarySelect_io_idx ? $signed(15'sh0) : $signed(_GEN_9); // @[Linear.scala 176:{17,17}]
  wire [14:0] _GEN_13 = 4'h1 == boundarySelect_io_idx ? $signed(15'sh49) : $signed(15'sh0); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_14 = 4'h2 == boundarySelect_io_idx ? $signed(15'sh35) : $signed(_GEN_13); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_15 = 4'h3 == boundarySelect_io_idx ? $signed(15'sh74) : $signed(_GEN_14); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_16 = 4'h4 == boundarySelect_io_idx ? $signed(15'shd5) : $signed(_GEN_15); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_17 = 4'h5 == boundarySelect_io_idx ? $signed(15'sh179) : $signed(_GEN_16); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_18 = 4'h6 == boundarySelect_io_idx ? $signed(15'sh287) : $signed(_GEN_17); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_19 = 4'h7 == boundarySelect_io_idx ? $signed(15'sh32b) : $signed(_GEN_18); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_20 = 4'h8 == boundarySelect_io_idx ? $signed(15'sh38c) : $signed(_GEN_19); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_21 = 4'h9 == boundarySelect_io_idx ? $signed(15'sh3cb) : $signed(_GEN_20); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_22 = 4'ha == boundarySelect_io_idx ? $signed(15'sh3b7) : $signed(_GEN_21); // @[Linear.scala 177:{17,17}]
  wire [14:0] _GEN_25 = 4'h1 == boundarySelect_io_idx ? $signed(15'shc) : $signed(15'sh0); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_26 = 4'h2 == boundarySelect_io_idx ? $signed(15'sh3e) : $signed(_GEN_25); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_27 = 4'h3 == boundarySelect_io_idx ? $signed(15'sh5a) : $signed(_GEN_26); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_28 = 4'h4 == boundarySelect_io_idx ? $signed(15'sh8f) : $signed(_GEN_27); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_29 = 4'h5 == boundarySelect_io_idx ? $signed(15'sh105) : $signed(_GEN_28); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_30 = 4'h6 == boundarySelect_io_idx ? $signed(15'sh105) : $signed(_GEN_29); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_31 = 4'h7 == boundarySelect_io_idx ? $signed(15'sh8f) : $signed(_GEN_30); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_32 = 4'h8 == boundarySelect_io_idx ? $signed(15'sh5a) : $signed(_GEN_31); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_33 = 4'h9 == boundarySelect_io_idx ? $signed(15'sh3e) : $signed(_GEN_32); // @[Linear.scala 178:{17,17}]
  wire [14:0] _GEN_34 = 4'ha == boundarySelect_io_idx ? $signed(15'shc) : $signed(_GEN_33); // @[Linear.scala 178:{17,17}]
  BoundarySelect boundarySelect ( // @[Linear.scala 166:48]
    .io_x(boundarySelect_io_x),
    .io_idx(boundarySelect_io_idx)
  );
  assign io_a_select = 4'hb == boundarySelect_io_idx ? $signed(15'sh0) : $signed(_GEN_10); // @[Linear.scala 176:{17,17}]
  assign io_b_select = 4'hb == boundarySelect_io_idx ? $signed(15'sh400) : $signed(_GEN_22); // @[Linear.scala 177:{17,17}]
  assign io_m_select = 4'hb == boundarySelect_io_idx ? $signed(15'sh0) : $signed(_GEN_34); // @[Linear.scala 178:{17,17}]
  assign boundarySelect_io_x = io_x; // @[Linear.scala 167:25]
endmodule
module UFSPL_MC(
  input         clock,
  input         reset,
  input  [14:0] io_x,
  output [14:0] io_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [14:0] constantSelect_io_x; // @[Linear.scala 191:48]
  wire [14:0] constantSelect_io_a_select; // @[Linear.scala 191:48]
  wire [14:0] constantSelect_io_b_select; // @[Linear.scala 191:48]
  wire [14:0] constantSelect_io_m_select; // @[Linear.scala 191:48]
  reg [14:0] input_buffer; // @[Linear.scala 194:33]
  reg [14:0] x_plus_a; // @[Linear.scala 195:29]
  reg [14:0] c_times_x_plus_a; // @[Linear.scala 196:37]
  reg [14:0] output_buffer; // @[Linear.scala 197:34]
  wire [29:0] _c_times_x_plus_a_T = $signed(x_plus_a) * $signed(constantSelect_io_m_select); // @[Linear.scala 203:35]
  wire [19:0] _c_times_x_plus_a_T_1 = _c_times_x_plus_a_T[29:10]; // @[Linear.scala 203:65]
  ConstantSelect constantSelect ( // @[Linear.scala 191:48]
    .io_x(constantSelect_io_x),
    .io_a_select(constantSelect_io_a_select),
    .io_b_select(constantSelect_io_b_select),
    .io_m_select(constantSelect_io_m_select)
  );
  assign io_o = output_buffer; // @[Linear.scala 207:10]
  assign constantSelect_io_x = input_buffer; // @[Linear.scala 201:25]
  always @(posedge clock) begin
    input_buffer <= io_x; // @[Linear.scala 200:18]
    x_plus_a <= $signed(input_buffer) + $signed(constantSelect_io_a_select); // @[Linear.scala 202:30]
    c_times_x_plus_a <= _c_times_x_plus_a_T_1[14:0]; // @[Linear.scala 203:22]
    output_buffer <= $signed(c_times_x_plus_a) + $signed(constantSelect_io_b_select); // @[Linear.scala 204:39]
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
  input_buffer = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  x_plus_a = _RAND_1[14:0];
  _RAND_2 = {1{`RANDOM}};
  c_times_x_plus_a = _RAND_2[14:0];
  _RAND_3 = {1{`RANDOM}};
  output_buffer = _RAND_3[14:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
