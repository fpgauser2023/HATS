module CheckBoundary(
  input  [24:0] io_x,
  input  [24:0] io_B_i,
  output        io_leq_B_i,
  output        io_gt_B_i
);
  assign io_leq_B_i = $signed(io_x) <= $signed(io_B_i); // @[Linear.scala 112:25]
  assign io_gt_B_i = $signed(io_x) > $signed(io_B_i); // @[Linear.scala 113:24]
endmodule
module BoundarySelect(
  input  [24:0] io_x,
  output [3:0]  io_idx
);
  wire [24:0] checkBoundaryModules_0_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_0_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_0_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_0_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_1_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_1_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_1_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_1_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_2_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_2_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_2_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_2_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_3_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_3_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_3_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_3_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_4_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_4_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_4_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_4_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_5_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_5_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_5_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_5_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_6_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_6_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_6_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_6_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_7_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_7_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_7_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_7_io_gt_B_i; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_8_io_x; // @[Linear.scala 129:40]
  wire [24:0] checkBoundaryModules_8_io_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_8_io_leq_B_i; // @[Linear.scala 129:40]
  wire  checkBoundaryModules_8_io_gt_B_i; // @[Linear.scala 129:40]
  wire  OHencodedIdx_1 = checkBoundaryModules_0_io_gt_B_i & checkBoundaryModules_1_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_2 = checkBoundaryModules_1_io_gt_B_i & checkBoundaryModules_2_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_3 = checkBoundaryModules_2_io_gt_B_i & checkBoundaryModules_3_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_4 = checkBoundaryModules_3_io_gt_B_i & checkBoundaryModules_4_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_5 = checkBoundaryModules_4_io_gt_B_i & checkBoundaryModules_5_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_6 = checkBoundaryModules_5_io_gt_B_i & checkBoundaryModules_6_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_7 = checkBoundaryModules_6_io_gt_B_i & checkBoundaryModules_7_io_leq_B_i; // @[Linear.scala 142:53]
  wire  OHencodedIdx_8 = checkBoundaryModules_7_io_gt_B_i & checkBoundaryModules_8_io_leq_B_i; // @[Linear.scala 142:53]
  wire [9:0] _io_idx_T = {checkBoundaryModules_8_io_gt_B_i,OHencodedIdx_8,OHencodedIdx_7,OHencodedIdx_6,OHencodedIdx_5,
    OHencodedIdx_4,OHencodedIdx_3,OHencodedIdx_2,OHencodedIdx_1,checkBoundaryModules_0_io_leq_B_i}; // @[Cat.scala 31:58]
  wire [1:0] io_idx_hi_1 = _io_idx_T[9:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_idx_lo_1 = _io_idx_T[7:0]; // @[OneHot.scala 31:18]
  wire  _io_idx_T_1 = |io_idx_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_0 = {{6'd0}, io_idx_hi_1}; // @[OneHot.scala 32:28]
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
  CheckBoundary checkBoundaryModules_0 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_0_io_x),
    .io_B_i(checkBoundaryModules_0_io_B_i),
    .io_leq_B_i(checkBoundaryModules_0_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_0_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_1 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_1_io_x),
    .io_B_i(checkBoundaryModules_1_io_B_i),
    .io_leq_B_i(checkBoundaryModules_1_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_1_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_2 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_2_io_x),
    .io_B_i(checkBoundaryModules_2_io_B_i),
    .io_leq_B_i(checkBoundaryModules_2_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_2_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_3 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_3_io_x),
    .io_B_i(checkBoundaryModules_3_io_B_i),
    .io_leq_B_i(checkBoundaryModules_3_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_3_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_4 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_4_io_x),
    .io_B_i(checkBoundaryModules_4_io_B_i),
    .io_leq_B_i(checkBoundaryModules_4_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_4_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_5 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_5_io_x),
    .io_B_i(checkBoundaryModules_5_io_B_i),
    .io_leq_B_i(checkBoundaryModules_5_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_5_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_6 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_6_io_x),
    .io_B_i(checkBoundaryModules_6_io_B_i),
    .io_leq_B_i(checkBoundaryModules_6_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_6_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_7 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_7_io_x),
    .io_B_i(checkBoundaryModules_7_io_B_i),
    .io_leq_B_i(checkBoundaryModules_7_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_7_io_gt_B_i)
  );
  CheckBoundary checkBoundaryModules_8 ( // @[Linear.scala 129:40]
    .io_x(checkBoundaryModules_8_io_x),
    .io_B_i(checkBoundaryModules_8_io_B_i),
    .io_leq_B_i(checkBoundaryModules_8_io_leq_B_i),
    .io_gt_B_i(checkBoundaryModules_8_io_gt_B_i)
  );
  assign io_idx = {_io_idx_T_1,_io_idx_T_9}; // @[Cat.scala 31:58]
  assign checkBoundaryModules_0_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_0_io_B_i = -25'sh600000; // @[Linear.scala 131:35]
  assign checkBoundaryModules_1_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_1_io_B_i = -25'sh366666; // @[Linear.scala 131:35]
  assign checkBoundaryModules_2_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_2_io_B_i = -25'sh244444; // @[Linear.scala 131:35]
  assign checkBoundaryModules_3_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_3_io_B_i = -25'sh122222; // @[Linear.scala 131:35]
  assign checkBoundaryModules_4_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_4_io_B_i = 25'sh0; // @[Linear.scala 131:35]
  assign checkBoundaryModules_5_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_5_io_B_i = 25'sh122222; // @[Linear.scala 131:35]
  assign checkBoundaryModules_6_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_6_io_B_i = 25'sh244444; // @[Linear.scala 131:35]
  assign checkBoundaryModules_7_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_7_io_B_i = 25'sh366666; // @[Linear.scala 131:35]
  assign checkBoundaryModules_8_io_x = io_x; // @[Linear.scala 130:33]
  assign checkBoundaryModules_8_io_B_i = 25'sh600000; // @[Linear.scala 131:35]
endmodule
module ConstantSelect(
  input  [24:0] io_x,
  output [24:0] io_a_select,
  output [24:0] io_b_select,
  output [24:0] io_m_select
);
  wire [24:0] boundarySelect_io_x; // @[Linear.scala 163:48]
  wire [3:0] boundarySelect_io_idx; // @[Linear.scala 163:48]
  wire [24:0] _GEN_2 = 4'h2 == boundarySelect_io_idx ? $signed(25'sh2d5555) : $signed(25'sh0); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_3 = 4'h3 == boundarySelect_io_idx ? $signed(25'sh1b3333) : $signed(_GEN_2); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_4 = 4'h4 == boundarySelect_io_idx ? $signed(25'sh91111) : $signed(_GEN_3); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_5 = 4'h5 == boundarySelect_io_idx ? $signed(-25'sh91111) : $signed(_GEN_4); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_6 = 4'h6 == boundarySelect_io_idx ? $signed(-25'sh1b3333) : $signed(_GEN_5); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_7 = 4'h7 == boundarySelect_io_idx ? $signed(-25'sh2d5555) : $signed(_GEN_6); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_8 = 4'h8 == boundarySelect_io_idx ? $signed(25'sh0) : $signed(_GEN_7); // @[Linear.scala 173:{17,17}]
  wire [24:0] _GEN_11 = 4'h1 == boundarySelect_io_idx ? $signed(25'sh12406) : $signed(25'sh0); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_12 = 4'h2 == boundarySelect_io_idx ? $signed(25'shf72c) : $signed(_GEN_11); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_13 = 4'h3 == boundarySelect_io_idx ? $signed(25'sh27c8a) : $signed(_GEN_12); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_14 = 4'h4 == boundarySelect_io_idx ? $signed(25'sh559c4) : $signed(_GEN_13); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_15 = 4'h5 == boundarySelect_io_idx ? $signed(25'shaa63c) : $signed(_GEN_14); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_16 = 4'h6 == boundarySelect_io_idx ? $signed(25'shd8376) : $signed(_GEN_15); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_17 = 4'h7 == boundarySelect_io_idx ? $signed(25'shf08d4) : $signed(_GEN_16); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_18 = 4'h8 == boundarySelect_io_idx ? $signed(25'shedbfa) : $signed(_GEN_17); // @[Linear.scala 174:{17,17}]
  wire [24:0] _GEN_21 = 4'h1 == boundarySelect_io_idx ? $signed(25'sh2efc) : $signed(25'sh0); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_22 = 4'h2 == boundarySelect_io_idx ? $signed(25'sh10700) : $signed(_GEN_21); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_23 = 4'h3 == boundarySelect_io_idx ? $signed(25'sh1c0cb) : $signed(_GEN_22); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_24 = 4'h4 == boundarySelect_io_idx ? $signed(25'sh3a4a3) : $signed(_GEN_23); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_25 = 4'h5 == boundarySelect_io_idx ? $signed(25'sh3a4a3) : $signed(_GEN_24); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_26 = 4'h6 == boundarySelect_io_idx ? $signed(25'sh1c0cb) : $signed(_GEN_25); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_27 = 4'h7 == boundarySelect_io_idx ? $signed(25'sh10700) : $signed(_GEN_26); // @[Linear.scala 175:{17,17}]
  wire [24:0] _GEN_28 = 4'h8 == boundarySelect_io_idx ? $signed(25'sh2efc) : $signed(_GEN_27); // @[Linear.scala 175:{17,17}]
  BoundarySelect boundarySelect ( // @[Linear.scala 163:48]
    .io_x(boundarySelect_io_x),
    .io_idx(boundarySelect_io_idx)
  );
  assign io_a_select = 4'h9 == boundarySelect_io_idx ? $signed(25'sh0) : $signed(_GEN_8); // @[Linear.scala 173:{17,17}]
  assign io_b_select = 4'h9 == boundarySelect_io_idx ? $signed(25'sh100000) : $signed(_GEN_18); // @[Linear.scala 174:{17,17}]
  assign io_m_select = 4'h9 == boundarySelect_io_idx ? $signed(25'sh0) : $signed(_GEN_28); // @[Linear.scala 175:{17,17}]
  assign boundarySelect_io_x = io_x; // @[Linear.scala 164:25]
endmodule
module UFSPL_5SP(
  input         clock,
  input         reset,
  input  [24:0] io_input,
  input         io_input_valid,
  input         io_input_last,
  output [24:0] io_output,
  output        io_output_valid,
  output        io_input_ready,
  output        io_output_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire [24:0] constantSelect_io_x; // @[Linear.scala 194:48]
  wire [24:0] constantSelect_io_a_select; // @[Linear.scala 194:48]
  wire [24:0] constantSelect_io_b_select; // @[Linear.scala 194:48]
  wire [24:0] constantSelect_io_m_select; // @[Linear.scala 194:48]
  reg [24:0] x_1; // @[Linear.scala 197:24]
  reg [24:0] x_2; // @[Linear.scala 198:24]
  reg [24:0] x_select; // @[Linear.scala 199:29]
  reg [24:0] a_1; // @[Linear.scala 200:24]
  reg [24:0] b_1; // @[Linear.scala 201:24]
  reg [24:0] b_2; // @[Linear.scala 202:24]
  reg [24:0] b_3; // @[Linear.scala 203:24]
  reg [24:0] m_1; // @[Linear.scala 204:24]
  reg [24:0] m_2; // @[Linear.scala 205:24]
  reg [24:0] mx; // @[Linear.scala 206:23]
  reg [24:0] mx_plus_b; // @[Linear.scala 207:30]
  wire [49:0] _mx_T = $signed(x_select) * $signed(m_2); // @[Linear.scala 224:21]
  wire [29:0] _mx_T_1 = _mx_T[49:20]; // @[Linear.scala 224:28]
  reg  io_output_valid_r; // @[Reg.scala 16:16]
  reg  io_output_valid_r_1; // @[Reg.scala 16:16]
  reg  io_output_valid_r_2; // @[Reg.scala 16:16]
  reg  io_output_valid_r_3; // @[Reg.scala 16:16]
  reg  io_output_valid_r_4; // @[Reg.scala 16:16]
  reg  io_output_last_r; // @[Reg.scala 16:16]
  reg  io_output_last_r_1; // @[Reg.scala 16:16]
  reg  io_output_last_r_2; // @[Reg.scala 16:16]
  reg  io_output_last_r_3; // @[Reg.scala 16:16]
  reg  io_output_last_r_4; // @[Reg.scala 16:16]
  ConstantSelect constantSelect ( // @[Linear.scala 194:48]
    .io_x(constantSelect_io_x),
    .io_a_select(constantSelect_io_a_select),
    .io_b_select(constantSelect_io_b_select),
    .io_m_select(constantSelect_io_m_select)
  );
  assign io_output = mx_plus_b; // @[Linear.scala 230:15]
  assign io_output_valid = io_output_valid_r_4; // @[Linear.scala 231:21]
  assign io_input_ready = 1'h1; // @[Linear.scala 233:20]
  assign io_output_last = io_output_last_r_4; // @[Linear.scala 232:20]
  assign constantSelect_io_x = x_1; // @[Linear.scala 212:25]
  always @(posedge clock) begin
    x_1 <= io_input; // @[Linear.scala 211:9]
    x_2 <= x_1; // @[Linear.scala 214:9]
    x_select <= $signed(a_1) + $signed(x_2); // @[Linear.scala 220:21]
    a_1 <= constantSelect_io_a_select; // @[Linear.scala 217:9]
    b_1 <= constantSelect_io_b_select; // @[Linear.scala 216:9]
    b_2 <= b_1; // @[Linear.scala 222:9]
    b_3 <= b_2; // @[Linear.scala 225:9]
    m_1 <= constantSelect_io_m_select; // @[Linear.scala 215:9]
    m_2 <= m_1; // @[Linear.scala 221:9]
    mx <= _mx_T_1[24:0]; // @[Linear.scala 224:8]
    mx_plus_b <= $signed(mx) + $signed(b_3); // @[Linear.scala 227:21]
    io_output_valid_r <= io_input_valid; // @[Reg.scala 16:16 17:{18,22}]
    io_output_valid_r_1 <= io_output_valid_r; // @[Reg.scala 16:16 17:{18,22}]
    io_output_valid_r_2 <= io_output_valid_r_1; // @[Reg.scala 16:16 17:{18,22}]
    io_output_valid_r_3 <= io_output_valid_r_2; // @[Reg.scala 16:16 17:{18,22}]
    io_output_valid_r_4 <= io_output_valid_r_3; // @[Reg.scala 16:16 17:{18,22}]
    io_output_last_r <= io_input_last; // @[Reg.scala 16:16 17:{18,22}]
    io_output_last_r_1 <= io_output_last_r; // @[Reg.scala 16:16 17:{18,22}]
    io_output_last_r_2 <= io_output_last_r_1; // @[Reg.scala 16:16 17:{18,22}]
    io_output_last_r_3 <= io_output_last_r_2; // @[Reg.scala 16:16 17:{18,22}]
    io_output_last_r_4 <= io_output_last_r_3; // @[Reg.scala 16:16 17:{18,22}]
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
  x_1 = _RAND_0[24:0];
  _RAND_1 = {1{`RANDOM}};
  x_2 = _RAND_1[24:0];
  _RAND_2 = {1{`RANDOM}};
  x_select = _RAND_2[24:0];
  _RAND_3 = {1{`RANDOM}};
  a_1 = _RAND_3[24:0];
  _RAND_4 = {1{`RANDOM}};
  b_1 = _RAND_4[24:0];
  _RAND_5 = {1{`RANDOM}};
  b_2 = _RAND_5[24:0];
  _RAND_6 = {1{`RANDOM}};
  b_3 = _RAND_6[24:0];
  _RAND_7 = {1{`RANDOM}};
  m_1 = _RAND_7[24:0];
  _RAND_8 = {1{`RANDOM}};
  m_2 = _RAND_8[24:0];
  _RAND_9 = {1{`RANDOM}};
  mx = _RAND_9[24:0];
  _RAND_10 = {1{`RANDOM}};
  mx_plus_b = _RAND_10[24:0];
  _RAND_11 = {1{`RANDOM}};
  io_output_valid_r = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_output_valid_r_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_output_valid_r_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_output_valid_r_3 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_output_valid_r_4 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_output_last_r = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_output_last_r_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_output_last_r_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_output_last_r_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_output_last_r_4 = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
