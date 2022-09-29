circuit UFSPL_5SP :
  module CheckBoundary :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module CheckBoundary_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, flip B_i : SInt<25>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Linear.scala 112:25]
    io.leq_B_i <= _io_leq_B_i_T @[Linear.scala 112:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Linear.scala 113:24]
    io.gt_B_i <= _io_gt_B_i_T @[Linear.scala 113:15]

  module BoundarySelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, idx : UInt<4>}

    wire _boundary_vector_WIRE : SInt<25>[9] @[Linear.scala 124:53]
    _boundary_vector_WIRE[0] <= asSInt(UInt<25>("h1a00000")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[1] <= asSInt(UInt<25>("h1c9999a")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[2] <= asSInt(UInt<25>("h1dbbbbc")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[3] <= asSInt(UInt<25>("h1edddde")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[4] <= asSInt(UInt<25>("h0")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[5] <= asSInt(UInt<25>("h122222")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[6] <= asSInt(UInt<25>("h244444")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[7] <= asSInt(UInt<25>("h366666")) @[Linear.scala 124:53]
    _boundary_vector_WIRE[8] <= asSInt(UInt<25>("h600000")) @[Linear.scala 124:53]
    reg boundary_vector : SInt<25>[9], clock with :
      reset => (reset, _boundary_vector_WIRE) @[Linear.scala 124:45]
    inst checkBoundaryModules_0 of CheckBoundary @[Linear.scala 129:40]
    checkBoundaryModules_0.clock <= clock
    checkBoundaryModules_0.reset <= reset
    checkBoundaryModules_0.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_0.io.B_i <= boundary_vector[0] @[Linear.scala 131:35]
    inst checkBoundaryModules_1 of CheckBoundary_1 @[Linear.scala 129:40]
    checkBoundaryModules_1.clock <= clock
    checkBoundaryModules_1.reset <= reset
    checkBoundaryModules_1.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_1.io.B_i <= boundary_vector[1] @[Linear.scala 131:35]
    inst checkBoundaryModules_2 of CheckBoundary_2 @[Linear.scala 129:40]
    checkBoundaryModules_2.clock <= clock
    checkBoundaryModules_2.reset <= reset
    checkBoundaryModules_2.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_2.io.B_i <= boundary_vector[2] @[Linear.scala 131:35]
    inst checkBoundaryModules_3 of CheckBoundary_3 @[Linear.scala 129:40]
    checkBoundaryModules_3.clock <= clock
    checkBoundaryModules_3.reset <= reset
    checkBoundaryModules_3.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_3.io.B_i <= boundary_vector[3] @[Linear.scala 131:35]
    inst checkBoundaryModules_4 of CheckBoundary_4 @[Linear.scala 129:40]
    checkBoundaryModules_4.clock <= clock
    checkBoundaryModules_4.reset <= reset
    checkBoundaryModules_4.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_4.io.B_i <= boundary_vector[4] @[Linear.scala 131:35]
    inst checkBoundaryModules_5 of CheckBoundary_5 @[Linear.scala 129:40]
    checkBoundaryModules_5.clock <= clock
    checkBoundaryModules_5.reset <= reset
    checkBoundaryModules_5.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_5.io.B_i <= boundary_vector[5] @[Linear.scala 131:35]
    inst checkBoundaryModules_6 of CheckBoundary_6 @[Linear.scala 129:40]
    checkBoundaryModules_6.clock <= clock
    checkBoundaryModules_6.reset <= reset
    checkBoundaryModules_6.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_6.io.B_i <= boundary_vector[6] @[Linear.scala 131:35]
    inst checkBoundaryModules_7 of CheckBoundary_7 @[Linear.scala 129:40]
    checkBoundaryModules_7.clock <= clock
    checkBoundaryModules_7.reset <= reset
    checkBoundaryModules_7.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_7.io.B_i <= boundary_vector[7] @[Linear.scala 131:35]
    inst checkBoundaryModules_8 of CheckBoundary_8 @[Linear.scala 129:40]
    checkBoundaryModules_8.clock <= clock
    checkBoundaryModules_8.reset <= reset
    checkBoundaryModules_8.io.x <= io.x @[Linear.scala 130:33]
    checkBoundaryModules_8.io.B_i <= boundary_vector[8] @[Linear.scala 131:35]
    node OHencodedIdx_1 = and(checkBoundaryModules_0.io.gt_B_i, checkBoundaryModules_1.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_2 = and(checkBoundaryModules_1.io.gt_B_i, checkBoundaryModules_2.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_3 = and(checkBoundaryModules_2.io.gt_B_i, checkBoundaryModules_3.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_4 = and(checkBoundaryModules_3.io.gt_B_i, checkBoundaryModules_4.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_5 = and(checkBoundaryModules_4.io.gt_B_i, checkBoundaryModules_5.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_6 = and(checkBoundaryModules_5.io.gt_B_i, checkBoundaryModules_6.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_7 = and(checkBoundaryModules_6.io.gt_B_i, checkBoundaryModules_7.io.leq_B_i) @[Linear.scala 142:53]
    node OHencodedIdx_8 = and(checkBoundaryModules_7.io.gt_B_i, checkBoundaryModules_8.io.leq_B_i) @[Linear.scala 142:53]
    node io_idx_lo_lo = cat(OHencodedIdx_1, checkBoundaryModules_0.io.leq_B_i) @[Cat.scala 31:58]
    node io_idx_lo_hi_hi = cat(OHencodedIdx_4, OHencodedIdx_3) @[Cat.scala 31:58]
    node io_idx_lo_hi = cat(io_idx_lo_hi_hi, OHencodedIdx_2) @[Cat.scala 31:58]
    node io_idx_lo = cat(io_idx_lo_hi, io_idx_lo_lo) @[Cat.scala 31:58]
    node io_idx_hi_lo = cat(OHencodedIdx_6, OHencodedIdx_5) @[Cat.scala 31:58]
    node io_idx_hi_hi_hi = cat(checkBoundaryModules_8.io.gt_B_i, OHencodedIdx_8) @[Cat.scala 31:58]
    node io_idx_hi_hi = cat(io_idx_hi_hi_hi, OHencodedIdx_7) @[Cat.scala 31:58]
    node io_idx_hi = cat(io_idx_hi_hi, io_idx_hi_lo) @[Cat.scala 31:58]
    node _io_idx_T = cat(io_idx_hi, io_idx_lo) @[Cat.scala 31:58]
    node io_idx_hi_1 = bits(_io_idx_T, 9, 8) @[OneHot.scala 30:18]
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
    io.idx <= _io_idx_T_10 @[Linear.scala 147:12]

  module ConstantSelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<25>, a_select : SInt<25>, b_select : SInt<25>, m_select : SInt<25>}

    inst boundarySelect of BoundarySelect @[Linear.scala 163:48]
    boundarySelect.clock <= clock
    boundarySelect.reset <= reset
    boundarySelect.io.x <= io.x @[Linear.scala 164:25]
    wire _m_vector_WIRE : SInt<25>[10] @[Linear.scala 167:46]
    _m_vector_WIRE[0] <= asSInt(UInt<25>("h0")) @[Linear.scala 167:46]
    _m_vector_WIRE[1] <= asSInt(UInt<25>("h2efc")) @[Linear.scala 167:46]
    _m_vector_WIRE[2] <= asSInt(UInt<25>("h10700")) @[Linear.scala 167:46]
    _m_vector_WIRE[3] <= asSInt(UInt<25>("h1c0cb")) @[Linear.scala 167:46]
    _m_vector_WIRE[4] <= asSInt(UInt<25>("h3a4a3")) @[Linear.scala 167:46]
    _m_vector_WIRE[5] <= asSInt(UInt<25>("h3a4a3")) @[Linear.scala 167:46]
    _m_vector_WIRE[6] <= asSInt(UInt<25>("h1c0cb")) @[Linear.scala 167:46]
    _m_vector_WIRE[7] <= asSInt(UInt<25>("h10700")) @[Linear.scala 167:46]
    _m_vector_WIRE[8] <= asSInt(UInt<25>("h2efc")) @[Linear.scala 167:46]
    _m_vector_WIRE[9] <= asSInt(UInt<25>("h0")) @[Linear.scala 167:46]
    reg m_vector : SInt<25>[10], clock with :
      reset => (reset, _m_vector_WIRE) @[Linear.scala 167:38]
    wire _b_vector_WIRE : SInt<25>[10] @[Linear.scala 168:46]
    _b_vector_WIRE[0] <= asSInt(UInt<25>("h0")) @[Linear.scala 168:46]
    _b_vector_WIRE[1] <= asSInt(UInt<25>("h12406")) @[Linear.scala 168:46]
    _b_vector_WIRE[2] <= asSInt(UInt<25>("hf72c")) @[Linear.scala 168:46]
    _b_vector_WIRE[3] <= asSInt(UInt<25>("h27c8a")) @[Linear.scala 168:46]
    _b_vector_WIRE[4] <= asSInt(UInt<25>("h559c4")) @[Linear.scala 168:46]
    _b_vector_WIRE[5] <= asSInt(UInt<25>("haa63c")) @[Linear.scala 168:46]
    _b_vector_WIRE[6] <= asSInt(UInt<25>("hd8376")) @[Linear.scala 168:46]
    _b_vector_WIRE[7] <= asSInt(UInt<25>("hf08d4")) @[Linear.scala 168:46]
    _b_vector_WIRE[8] <= asSInt(UInt<25>("hedbfa")) @[Linear.scala 168:46]
    _b_vector_WIRE[9] <= asSInt(UInt<25>("h100000")) @[Linear.scala 168:46]
    reg b_vector : SInt<25>[10], clock with :
      reset => (reset, _b_vector_WIRE) @[Linear.scala 168:38]
    wire _a_vector_WIRE : SInt<25>[10] @[Linear.scala 169:46]
    _a_vector_WIRE[0] <= asSInt(UInt<25>("h0")) @[Linear.scala 169:46]
    _a_vector_WIRE[1] <= asSInt(UInt<25>("h0")) @[Linear.scala 169:46]
    _a_vector_WIRE[2] <= asSInt(UInt<25>("h2d5555")) @[Linear.scala 169:46]
    _a_vector_WIRE[3] <= asSInt(UInt<25>("h1b3333")) @[Linear.scala 169:46]
    _a_vector_WIRE[4] <= asSInt(UInt<25>("h91111")) @[Linear.scala 169:46]
    _a_vector_WIRE[5] <= asSInt(UInt<25>("h1f6eeef")) @[Linear.scala 169:46]
    _a_vector_WIRE[6] <= asSInt(UInt<25>("h1e4cccd")) @[Linear.scala 169:46]
    _a_vector_WIRE[7] <= asSInt(UInt<25>("h1d2aaab")) @[Linear.scala 169:46]
    _a_vector_WIRE[8] <= asSInt(UInt<25>("h0")) @[Linear.scala 169:46]
    _a_vector_WIRE[9] <= asSInt(UInt<25>("h0")) @[Linear.scala 169:46]
    reg a_vector : SInt<25>[10], clock with :
      reset => (reset, _a_vector_WIRE) @[Linear.scala 169:38]
    io.a_select <= a_vector[boundarySelect.io.idx] @[Linear.scala 173:17]
    io.b_select <= b_vector[boundarySelect.io.idx] @[Linear.scala 174:17]
    io.m_select <= m_vector[boundarySelect.io.idx] @[Linear.scala 175:17]

  module UFSPL_5SP :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip input : SInt<25>, flip input_valid : UInt<1>, flip input_last : UInt<1>, output : SInt<25>, output_valid : UInt<1>, input_ready : UInt<1>, output_last : UInt<1>}

    inst constantSelect of ConstantSelect @[Linear.scala 194:48]
    constantSelect.clock <= clock
    constantSelect.reset <= reset
    reg x_1 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), x_1) @[Linear.scala 197:24]
    reg x_2 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), x_2) @[Linear.scala 198:24]
    reg x_select : SInt<25>, clock with :
      reset => (UInt<1>("h0"), x_select) @[Linear.scala 199:29]
    reg a_1 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), a_1) @[Linear.scala 200:24]
    reg b_1 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), b_1) @[Linear.scala 201:24]
    reg b_2 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), b_2) @[Linear.scala 202:24]
    reg b_3 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), b_3) @[Linear.scala 203:24]
    reg m_1 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), m_1) @[Linear.scala 204:24]
    reg m_2 : SInt<25>, clock with :
      reset => (UInt<1>("h0"), m_2) @[Linear.scala 205:24]
    reg mx : SInt<25>, clock with :
      reset => (UInt<1>("h0"), mx) @[Linear.scala 206:23]
    reg mx_plus_b : SInt<25>, clock with :
      reset => (UInt<1>("h0"), mx_plus_b) @[Linear.scala 207:30]
    x_1 <= io.input @[Linear.scala 211:9]
    constantSelect.io.x <= x_1 @[Linear.scala 212:25]
    x_2 <= x_1 @[Linear.scala 214:9]
    m_1 <= constantSelect.io.m_select @[Linear.scala 215:9]
    b_1 <= constantSelect.io.b_select @[Linear.scala 216:9]
    a_1 <= constantSelect.io.a_select @[Linear.scala 217:9]
    node _x_select_T = add(a_1, x_2) @[Linear.scala 220:21]
    node _x_select_T_1 = tail(_x_select_T, 1) @[Linear.scala 220:21]
    node _x_select_T_2 = asSInt(_x_select_T_1) @[Linear.scala 220:21]
    x_select <= _x_select_T_2 @[Linear.scala 220:14]
    m_2 <= m_1 @[Linear.scala 221:9]
    b_2 <= b_1 @[Linear.scala 222:9]
    node _mx_T = mul(x_select, m_2) @[Linear.scala 224:21]
    node _mx_T_1 = shr(_mx_T, 20) @[Linear.scala 224:28]
    mx <= _mx_T_1 @[Linear.scala 224:8]
    b_3 <= b_2 @[Linear.scala 225:9]
    node _mx_plus_b_T = add(mx, b_3) @[Linear.scala 227:21]
    node _mx_plus_b_T_1 = tail(_mx_plus_b_T, 1) @[Linear.scala 227:21]
    node _mx_plus_b_T_2 = asSInt(_mx_plus_b_T_1) @[Linear.scala 227:21]
    mx_plus_b <= _mx_plus_b_T_2 @[Linear.scala 227:15]
    io.output <= mx_plus_b @[Linear.scala 230:15]
    reg io_output_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_valid_r) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_valid_r <= io.input_valid @[Reg.scala 17:22]
    reg io_output_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_valid_r_1) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_valid_r_1 <= io_output_valid_r @[Reg.scala 17:22]
    reg io_output_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_valid_r_2) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_valid_r_2 <= io_output_valid_r_1 @[Reg.scala 17:22]
    reg io_output_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_valid_r_3) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_valid_r_3 <= io_output_valid_r_2 @[Reg.scala 17:22]
    reg io_output_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_valid_r_4) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_valid_r_4 <= io_output_valid_r_3 @[Reg.scala 17:22]
    io.output_valid <= io_output_valid_r_4 @[Linear.scala 231:21]
    reg io_output_last_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_last_r) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_last_r <= io.input_last @[Reg.scala 17:22]
    reg io_output_last_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_last_r_1) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_last_r_1 <= io_output_last_r @[Reg.scala 17:22]
    reg io_output_last_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_last_r_2) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_last_r_2 <= io_output_last_r_1 @[Reg.scala 17:22]
    reg io_output_last_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_last_r_3) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_last_r_3 <= io_output_last_r_2 @[Reg.scala 17:22]
    reg io_output_last_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_output_last_r_4) @[Reg.scala 16:16]
    when UInt<1>("h1") : @[Reg.scala 17:18]
      io_output_last_r_4 <= io_output_last_r_3 @[Reg.scala 17:22]
    io.output_last <= io_output_last_r_4 @[Linear.scala 232:20]
    io.input_ready <= UInt<1>("h1") @[Linear.scala 233:20]

