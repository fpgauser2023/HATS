circuit UFSPL_MC :
  module CheckBoundary :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module CheckBoundary_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 114:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 114:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 115:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 115:15]

  module BoundarySelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, idx : UInt<4>}

    wire _boundary_vector_WIRE : SInt<15>[11] @[Linear.scala 127:53]
    _boundary_vector_WIRE[0] <= asSInt(UInt<15>("h6800")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[1] <= asSInt(UInt<15>("h7266")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[2] <= asSInt(UInt<15>("h75cd")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[3] <= asSInt(UInt<15>("h7933")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[4] <= asSInt(UInt<15>("h7c9a")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[5] <= asSInt(UInt<15>("h0")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[6] <= asSInt(UInt<15>("h366")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[7] <= asSInt(UInt<15>("h6cd")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[8] <= asSInt(UInt<15>("ha33")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[9] <= asSInt(UInt<15>("hd9a")) @[Linear.scala 127:53]
    _boundary_vector_WIRE[10] <= asSInt(UInt<15>("h1800")) @[Linear.scala 127:53]
    reg boundary_vector : SInt<15>[11], clock with :
      reset => (reset, _boundary_vector_WIRE) @[Linear.scala 127:45]
    inst checkBoundaryModules_0 of CheckBoundary @[Linear.scala 132:40]
    checkBoundaryModules_0.clock <= clock
    checkBoundaryModules_0.reset <= reset
    checkBoundaryModules_0.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_0.io.B_i <= boundary_vector[0] @[Linear.scala 134:35]
    inst checkBoundaryModules_1 of CheckBoundary_1 @[Linear.scala 132:40]
    checkBoundaryModules_1.clock <= clock
    checkBoundaryModules_1.reset <= reset
    checkBoundaryModules_1.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_1.io.B_i <= boundary_vector[1] @[Linear.scala 134:35]
    inst checkBoundaryModules_2 of CheckBoundary_2 @[Linear.scala 132:40]
    checkBoundaryModules_2.clock <= clock
    checkBoundaryModules_2.reset <= reset
    checkBoundaryModules_2.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_2.io.B_i <= boundary_vector[2] @[Linear.scala 134:35]
    inst checkBoundaryModules_3 of CheckBoundary_3 @[Linear.scala 132:40]
    checkBoundaryModules_3.clock <= clock
    checkBoundaryModules_3.reset <= reset
    checkBoundaryModules_3.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_3.io.B_i <= boundary_vector[3] @[Linear.scala 134:35]
    inst checkBoundaryModules_4 of CheckBoundary_4 @[Linear.scala 132:40]
    checkBoundaryModules_4.clock <= clock
    checkBoundaryModules_4.reset <= reset
    checkBoundaryModules_4.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_4.io.B_i <= boundary_vector[4] @[Linear.scala 134:35]
    inst checkBoundaryModules_5 of CheckBoundary_5 @[Linear.scala 132:40]
    checkBoundaryModules_5.clock <= clock
    checkBoundaryModules_5.reset <= reset
    checkBoundaryModules_5.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_5.io.B_i <= boundary_vector[5] @[Linear.scala 134:35]
    inst checkBoundaryModules_6 of CheckBoundary_6 @[Linear.scala 132:40]
    checkBoundaryModules_6.clock <= clock
    checkBoundaryModules_6.reset <= reset
    checkBoundaryModules_6.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_6.io.B_i <= boundary_vector[6] @[Linear.scala 134:35]
    inst checkBoundaryModules_7 of CheckBoundary_7 @[Linear.scala 132:40]
    checkBoundaryModules_7.clock <= clock
    checkBoundaryModules_7.reset <= reset
    checkBoundaryModules_7.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_7.io.B_i <= boundary_vector[7] @[Linear.scala 134:35]
    inst checkBoundaryModules_8 of CheckBoundary_8 @[Linear.scala 132:40]
    checkBoundaryModules_8.clock <= clock
    checkBoundaryModules_8.reset <= reset
    checkBoundaryModules_8.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_8.io.B_i <= boundary_vector[8] @[Linear.scala 134:35]
    inst checkBoundaryModules_9 of CheckBoundary_9 @[Linear.scala 132:40]
    checkBoundaryModules_9.clock <= clock
    checkBoundaryModules_9.reset <= reset
    checkBoundaryModules_9.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_9.io.B_i <= boundary_vector[9] @[Linear.scala 134:35]
    inst checkBoundaryModules_10 of CheckBoundary_10 @[Linear.scala 132:40]
    checkBoundaryModules_10.clock <= clock
    checkBoundaryModules_10.reset <= reset
    checkBoundaryModules_10.io.x <= io.x @[Linear.scala 133:33]
    checkBoundaryModules_10.io.B_i <= boundary_vector[10] @[Linear.scala 134:35]
    node OHencodedIdx_1 = and(checkBoundaryModules_0.io.gt_B_i, checkBoundaryModules_1.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_2 = and(checkBoundaryModules_1.io.gt_B_i, checkBoundaryModules_2.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_3 = and(checkBoundaryModules_2.io.gt_B_i, checkBoundaryModules_3.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_4 = and(checkBoundaryModules_3.io.gt_B_i, checkBoundaryModules_4.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_5 = and(checkBoundaryModules_4.io.gt_B_i, checkBoundaryModules_5.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_6 = and(checkBoundaryModules_5.io.gt_B_i, checkBoundaryModules_6.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_7 = and(checkBoundaryModules_6.io.gt_B_i, checkBoundaryModules_7.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_8 = and(checkBoundaryModules_7.io.gt_B_i, checkBoundaryModules_8.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_9 = and(checkBoundaryModules_8.io.gt_B_i, checkBoundaryModules_9.io.leq_B_i) @[Linear.scala 145:53]
    node OHencodedIdx_10 = and(checkBoundaryModules_9.io.gt_B_i, checkBoundaryModules_10.io.leq_B_i) @[Linear.scala 145:53]
    node io_idx_lo_lo_hi = cat(OHencodedIdx_2, OHencodedIdx_1) @[Cat.scala 31:58]
    node io_idx_lo_lo = cat(io_idx_lo_lo_hi, checkBoundaryModules_0.io.leq_B_i) @[Cat.scala 31:58]
    node io_idx_lo_hi_hi = cat(OHencodedIdx_5, OHencodedIdx_4) @[Cat.scala 31:58]
    node io_idx_lo_hi = cat(io_idx_lo_hi_hi, OHencodedIdx_3) @[Cat.scala 31:58]
    node io_idx_lo = cat(io_idx_lo_hi, io_idx_lo_lo) @[Cat.scala 31:58]
    node io_idx_hi_lo_hi = cat(OHencodedIdx_8, OHencodedIdx_7) @[Cat.scala 31:58]
    node io_idx_hi_lo = cat(io_idx_hi_lo_hi, OHencodedIdx_6) @[Cat.scala 31:58]
    node io_idx_hi_hi_hi = cat(checkBoundaryModules_10.io.gt_B_i, OHencodedIdx_10) @[Cat.scala 31:58]
    node io_idx_hi_hi = cat(io_idx_hi_hi_hi, OHencodedIdx_9) @[Cat.scala 31:58]
    node io_idx_hi = cat(io_idx_hi_hi, io_idx_hi_lo) @[Cat.scala 31:58]
    node _io_idx_T = cat(io_idx_hi, io_idx_lo) @[Cat.scala 31:58]
    node io_idx_hi_1 = bits(_io_idx_T, 11, 8) @[OneHot.scala 30:18]
    node io_idx_lo_1 = bits(_io_idx_T, 7, 0) @[OneHot.scala 31:18]
    node _io_idx_T_1 = orr(io_idx_hi_1) @[OneHot.scala 32:14]
    node _io_idx_T_2 = or(io_idx_hi_1, io_idx_lo_1) @[OneHot.scala 32:28]
    node io_idx_hi_2 = bits(_io_idx_T_2, 7, 4) @[OneHot.scala 30:18]
    node io_idx_lo_2 = bits(_io_idx_T_2, 3, 0) @[OneHot.scala 31:18]
    node _io_idx_T_3 = orr(io_idx_hi_2) @[OneHot.scala 32:14]
    node _io_idx_T_4 = or(io_idx_hi_2, io_idx_lo_2) @[OneHot.scala 32:28]
    node io_idx_hi_3 = bits(_io_idx_T_4, 3, 2) @[OneHot.scala 30:18]
    node io_idx_lo_3 = bits(_io_idx_T_4, 1, 0) @[OneHot.scala 31:18]
    node _io_idx_T_5 = orr(io_idx_hi_3) @[OneHot.scala 32:14]
    node _io_idx_T_6 = or(io_idx_hi_3, io_idx_lo_3) @[OneHot.scala 32:28]
    node _io_idx_T_7 = bits(_io_idx_T_6, 1, 1) @[CircuitMath.scala 30:8]
    node _io_idx_T_8 = cat(_io_idx_T_5, _io_idx_T_7) @[Cat.scala 31:58]
    node _io_idx_T_9 = cat(_io_idx_T_3, _io_idx_T_8) @[Cat.scala 31:58]
    node _io_idx_T_10 = cat(_io_idx_T_1, _io_idx_T_9) @[Cat.scala 31:58]
    io.idx <= _io_idx_T_10 @[Linear.scala 150:12]

  module ConstantSelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, a_select : SInt<15>, b_select : SInt<15>, m_select : SInt<15>}

    inst boundarySelect of BoundarySelect @[Linear.scala 166:48]
    boundarySelect.clock <= clock
    boundarySelect.reset <= reset
    boundarySelect.io.x <= io.x @[Linear.scala 167:25]
    wire _m_vector_WIRE : SInt<15>[12] @[Linear.scala 170:46]
    _m_vector_WIRE[0] <= asSInt(UInt<15>("h0")) @[Linear.scala 170:46]
    _m_vector_WIRE[1] <= asSInt(UInt<15>("hc")) @[Linear.scala 170:46]
    _m_vector_WIRE[2] <= asSInt(UInt<15>("h3e")) @[Linear.scala 170:46]
    _m_vector_WIRE[3] <= asSInt(UInt<15>("h5a")) @[Linear.scala 170:46]
    _m_vector_WIRE[4] <= asSInt(UInt<15>("h8f")) @[Linear.scala 170:46]
    _m_vector_WIRE[5] <= asSInt(UInt<15>("h105")) @[Linear.scala 170:46]
    _m_vector_WIRE[6] <= asSInt(UInt<15>("h105")) @[Linear.scala 170:46]
    _m_vector_WIRE[7] <= asSInt(UInt<15>("h8f")) @[Linear.scala 170:46]
    _m_vector_WIRE[8] <= asSInt(UInt<15>("h5a")) @[Linear.scala 170:46]
    _m_vector_WIRE[9] <= asSInt(UInt<15>("h3e")) @[Linear.scala 170:46]
    _m_vector_WIRE[10] <= asSInt(UInt<15>("hc")) @[Linear.scala 170:46]
    _m_vector_WIRE[11] <= asSInt(UInt<15>("h0")) @[Linear.scala 170:46]
    reg m_vector : SInt<15>[12], clock with :
      reset => (reset, _m_vector_WIRE) @[Linear.scala 170:38]
    wire _b_vector_WIRE : SInt<15>[12] @[Linear.scala 171:46]
    _b_vector_WIRE[0] <= asSInt(UInt<15>("h0")) @[Linear.scala 171:46]
    _b_vector_WIRE[1] <= asSInt(UInt<15>("h49")) @[Linear.scala 171:46]
    _b_vector_WIRE[2] <= asSInt(UInt<15>("h35")) @[Linear.scala 171:46]
    _b_vector_WIRE[3] <= asSInt(UInt<15>("h74")) @[Linear.scala 171:46]
    _b_vector_WIRE[4] <= asSInt(UInt<15>("hd5")) @[Linear.scala 171:46]
    _b_vector_WIRE[5] <= asSInt(UInt<15>("h179")) @[Linear.scala 171:46]
    _b_vector_WIRE[6] <= asSInt(UInt<15>("h287")) @[Linear.scala 171:46]
    _b_vector_WIRE[7] <= asSInt(UInt<15>("h32b")) @[Linear.scala 171:46]
    _b_vector_WIRE[8] <= asSInt(UInt<15>("h38c")) @[Linear.scala 171:46]
    _b_vector_WIRE[9] <= asSInt(UInt<15>("h3cb")) @[Linear.scala 171:46]
    _b_vector_WIRE[10] <= asSInt(UInt<15>("h3b7")) @[Linear.scala 171:46]
    _b_vector_WIRE[11] <= asSInt(UInt<15>("h400")) @[Linear.scala 171:46]
    reg b_vector : SInt<15>[12], clock with :
      reset => (reset, _b_vector_WIRE) @[Linear.scala 171:38]
    wire _a_vector_WIRE : SInt<15>[12] @[Linear.scala 172:46]
    _a_vector_WIRE[0] <= asSInt(UInt<15>("h0")) @[Linear.scala 172:46]
    _a_vector_WIRE[1] <= asSInt(UInt<15>("h0")) @[Linear.scala 172:46]
    _a_vector_WIRE[2] <= asSInt(UInt<15>("hbe6")) @[Linear.scala 172:46]
    _a_vector_WIRE[3] <= asSInt(UInt<15>("h880")) @[Linear.scala 172:46]
    _a_vector_WIRE[4] <= asSInt(UInt<15>("h51a")) @[Linear.scala 172:46]
    _a_vector_WIRE[5] <= asSInt(UInt<15>("h1b3")) @[Linear.scala 172:46]
    _a_vector_WIRE[6] <= asSInt(UInt<15>("h7e4d")) @[Linear.scala 172:46]
    _a_vector_WIRE[7] <= asSInt(UInt<15>("h7ae6")) @[Linear.scala 172:46]
    _a_vector_WIRE[8] <= asSInt(UInt<15>("h7780")) @[Linear.scala 172:46]
    _a_vector_WIRE[9] <= asSInt(UInt<15>("h741a")) @[Linear.scala 172:46]
    _a_vector_WIRE[10] <= asSInt(UInt<15>("h0")) @[Linear.scala 172:46]
    _a_vector_WIRE[11] <= asSInt(UInt<15>("h0")) @[Linear.scala 172:46]
    reg a_vector : SInt<15>[12], clock with :
      reset => (reset, _a_vector_WIRE) @[Linear.scala 172:38]
    io.a_select <= a_vector[boundarySelect.io.idx] @[Linear.scala 176:17]
    io.b_select <= b_vector[boundarySelect.io.idx] @[Linear.scala 177:17]
    io.m_select <= m_vector[boundarySelect.io.idx] @[Linear.scala 178:17]

  module UFSPL_MC :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip x : SInt<15>, o : SInt<15>}

    inst constantSelect of ConstantSelect @[Linear.scala 191:48]
    constantSelect.clock <= clock
    constantSelect.reset <= reset
    reg input_buffer : SInt<15>, clock with :
      reset => (UInt<1>("h0"), input_buffer) @[Linear.scala 194:33]
    reg x_plus_a : SInt<15>, clock with :
      reset => (UInt<1>("h0"), x_plus_a) @[Linear.scala 195:29]
    reg c_times_x_plus_a : SInt<15>, clock with :
      reset => (UInt<1>("h0"), c_times_x_plus_a) @[Linear.scala 196:37]
    reg output_buffer : SInt<15>, clock with :
      reset => (UInt<1>("h0"), output_buffer) @[Linear.scala 197:34]
    input_buffer <= io.x @[Linear.scala 200:18]
    constantSelect.io.x <= input_buffer @[Linear.scala 201:25]
    node _x_plus_a_T = add(input_buffer, constantSelect.io.a_select) @[Linear.scala 202:30]
    node _x_plus_a_T_1 = tail(_x_plus_a_T, 1) @[Linear.scala 202:30]
    node _x_plus_a_T_2 = asSInt(_x_plus_a_T_1) @[Linear.scala 202:30]
    x_plus_a <= _x_plus_a_T_2 @[Linear.scala 202:14]
    node _c_times_x_plus_a_T = mul(x_plus_a, constantSelect.io.m_select) @[Linear.scala 203:35]
    node _c_times_x_plus_a_T_1 = shr(_c_times_x_plus_a_T, 10) @[Linear.scala 203:65]
    c_times_x_plus_a <= _c_times_x_plus_a_T_1 @[Linear.scala 203:22]
    node _output_buffer_T = add(c_times_x_plus_a, constantSelect.io.b_select) @[Linear.scala 204:39]
    node _output_buffer_T_1 = tail(_output_buffer_T, 1) @[Linear.scala 204:39]
    node _output_buffer_T_2 = asSInt(_output_buffer_T_1) @[Linear.scala 204:39]
    output_buffer <= _output_buffer_T_2 @[Linear.scala 204:19]
    io.o <= output_buffer @[Linear.scala 207:10]

