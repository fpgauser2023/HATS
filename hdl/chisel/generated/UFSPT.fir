circuit UFSPT :
  module CheckBoundary :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module CheckBoundary_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[Taylor.scala 159:25]
    io.leq_B_i <= _io_leq_B_i_T @[Taylor.scala 159:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[Taylor.scala 160:24]
    io.gt_B_i <= _io_gt_B_i_T @[Taylor.scala 160:15]

  module BoundarySelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, region : UInt<4>}

    wire _boundary_vector_WIRE : SInt<15>[11] @[Taylor.scala 172:53]
    _boundary_vector_WIRE[0] <= asSInt(UInt<15>("h6800")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[1] <= asSInt(UInt<15>("h7266")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[2] <= asSInt(UInt<15>("h75cd")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[3] <= asSInt(UInt<15>("h7933")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[4] <= asSInt(UInt<15>("h7c9a")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[5] <= asSInt(UInt<15>("h0")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[6] <= asSInt(UInt<15>("h366")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[7] <= asSInt(UInt<15>("h6cd")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[8] <= asSInt(UInt<15>("ha33")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[9] <= asSInt(UInt<15>("hd9a")) @[Taylor.scala 172:53]
    _boundary_vector_WIRE[10] <= asSInt(UInt<15>("h1800")) @[Taylor.scala 172:53]
    reg boundary_vector : SInt<15>[11], clock with :
      reset => (reset, _boundary_vector_WIRE) @[Taylor.scala 172:45]
    inst checkBoundaryModules_0 of CheckBoundary @[Taylor.scala 177:40]
    checkBoundaryModules_0.clock <= clock
    checkBoundaryModules_0.reset <= reset
    checkBoundaryModules_0.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_0.io.B_i <= boundary_vector[0] @[Taylor.scala 179:35]
    inst checkBoundaryModules_1 of CheckBoundary_1 @[Taylor.scala 177:40]
    checkBoundaryModules_1.clock <= clock
    checkBoundaryModules_1.reset <= reset
    checkBoundaryModules_1.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_1.io.B_i <= boundary_vector[1] @[Taylor.scala 179:35]
    inst checkBoundaryModules_2 of CheckBoundary_2 @[Taylor.scala 177:40]
    checkBoundaryModules_2.clock <= clock
    checkBoundaryModules_2.reset <= reset
    checkBoundaryModules_2.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_2.io.B_i <= boundary_vector[2] @[Taylor.scala 179:35]
    inst checkBoundaryModules_3 of CheckBoundary_3 @[Taylor.scala 177:40]
    checkBoundaryModules_3.clock <= clock
    checkBoundaryModules_3.reset <= reset
    checkBoundaryModules_3.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_3.io.B_i <= boundary_vector[3] @[Taylor.scala 179:35]
    inst checkBoundaryModules_4 of CheckBoundary_4 @[Taylor.scala 177:40]
    checkBoundaryModules_4.clock <= clock
    checkBoundaryModules_4.reset <= reset
    checkBoundaryModules_4.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_4.io.B_i <= boundary_vector[4] @[Taylor.scala 179:35]
    inst checkBoundaryModules_5 of CheckBoundary_5 @[Taylor.scala 177:40]
    checkBoundaryModules_5.clock <= clock
    checkBoundaryModules_5.reset <= reset
    checkBoundaryModules_5.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_5.io.B_i <= boundary_vector[5] @[Taylor.scala 179:35]
    inst checkBoundaryModules_6 of CheckBoundary_6 @[Taylor.scala 177:40]
    checkBoundaryModules_6.clock <= clock
    checkBoundaryModules_6.reset <= reset
    checkBoundaryModules_6.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_6.io.B_i <= boundary_vector[6] @[Taylor.scala 179:35]
    inst checkBoundaryModules_7 of CheckBoundary_7 @[Taylor.scala 177:40]
    checkBoundaryModules_7.clock <= clock
    checkBoundaryModules_7.reset <= reset
    checkBoundaryModules_7.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_7.io.B_i <= boundary_vector[7] @[Taylor.scala 179:35]
    inst checkBoundaryModules_8 of CheckBoundary_8 @[Taylor.scala 177:40]
    checkBoundaryModules_8.clock <= clock
    checkBoundaryModules_8.reset <= reset
    checkBoundaryModules_8.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_8.io.B_i <= boundary_vector[8] @[Taylor.scala 179:35]
    inst checkBoundaryModules_9 of CheckBoundary_9 @[Taylor.scala 177:40]
    checkBoundaryModules_9.clock <= clock
    checkBoundaryModules_9.reset <= reset
    checkBoundaryModules_9.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_9.io.B_i <= boundary_vector[9] @[Taylor.scala 179:35]
    inst checkBoundaryModules_10 of CheckBoundary_10 @[Taylor.scala 177:40]
    checkBoundaryModules_10.clock <= clock
    checkBoundaryModules_10.reset <= reset
    checkBoundaryModules_10.io.x <= io.x @[Taylor.scala 178:33]
    checkBoundaryModules_10.io.B_i <= boundary_vector[10] @[Taylor.scala 179:35]
    node OHencodedIdx_1 = and(checkBoundaryModules_0.io.gt_B_i, checkBoundaryModules_1.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_2 = and(checkBoundaryModules_1.io.gt_B_i, checkBoundaryModules_2.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_3 = and(checkBoundaryModules_2.io.gt_B_i, checkBoundaryModules_3.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_4 = and(checkBoundaryModules_3.io.gt_B_i, checkBoundaryModules_4.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_5 = and(checkBoundaryModules_4.io.gt_B_i, checkBoundaryModules_5.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_6 = and(checkBoundaryModules_5.io.gt_B_i, checkBoundaryModules_6.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_7 = and(checkBoundaryModules_6.io.gt_B_i, checkBoundaryModules_7.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_8 = and(checkBoundaryModules_7.io.gt_B_i, checkBoundaryModules_8.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_9 = and(checkBoundaryModules_8.io.gt_B_i, checkBoundaryModules_9.io.leq_B_i) @[Taylor.scala 190:53]
    node OHencodedIdx_10 = and(checkBoundaryModules_9.io.gt_B_i, checkBoundaryModules_10.io.leq_B_i) @[Taylor.scala 190:53]
    node io_region_lo_lo_hi = cat(OHencodedIdx_2, OHencodedIdx_1) @[Cat.scala 31:58]
    node io_region_lo_lo = cat(io_region_lo_lo_hi, checkBoundaryModules_0.io.leq_B_i) @[Cat.scala 31:58]
    node io_region_lo_hi_hi = cat(OHencodedIdx_5, OHencodedIdx_4) @[Cat.scala 31:58]
    node io_region_lo_hi = cat(io_region_lo_hi_hi, OHencodedIdx_3) @[Cat.scala 31:58]
    node io_region_lo = cat(io_region_lo_hi, io_region_lo_lo) @[Cat.scala 31:58]
    node io_region_hi_lo_hi = cat(OHencodedIdx_8, OHencodedIdx_7) @[Cat.scala 31:58]
    node io_region_hi_lo = cat(io_region_hi_lo_hi, OHencodedIdx_6) @[Cat.scala 31:58]
    node io_region_hi_hi_hi = cat(checkBoundaryModules_10.io.gt_B_i, OHencodedIdx_10) @[Cat.scala 31:58]
    node io_region_hi_hi = cat(io_region_hi_hi_hi, OHencodedIdx_9) @[Cat.scala 31:58]
    node io_region_hi = cat(io_region_hi_hi, io_region_hi_lo) @[Cat.scala 31:58]
    node _io_region_T = cat(io_region_hi, io_region_lo) @[Cat.scala 31:58]
    node io_region_hi_1 = bits(_io_region_T, 11, 8) @[OneHot.scala 30:18]
    node io_region_lo_1 = bits(_io_region_T, 7, 0) @[OneHot.scala 31:18]
    node _io_region_T_1 = orr(io_region_hi_1) @[OneHot.scala 32:14]
    node _io_region_T_2 = or(io_region_hi_1, io_region_lo_1) @[OneHot.scala 32:28]
    node io_region_hi_2 = bits(_io_region_T_2, 7, 4) @[OneHot.scala 30:18]
    node io_region_lo_2 = bits(_io_region_T_2, 3, 0) @[OneHot.scala 31:18]
    node _io_region_T_3 = orr(io_region_hi_2) @[OneHot.scala 32:14]
    node _io_region_T_4 = or(io_region_hi_2, io_region_lo_2) @[OneHot.scala 32:28]
    node io_region_hi_3 = bits(_io_region_T_4, 3, 2) @[OneHot.scala 30:18]
    node io_region_lo_3 = bits(_io_region_T_4, 1, 0) @[OneHot.scala 31:18]
    node _io_region_T_5 = orr(io_region_hi_3) @[OneHot.scala 32:14]
    node _io_region_T_6 = or(io_region_hi_3, io_region_lo_3) @[OneHot.scala 32:28]
    node _io_region_T_7 = bits(_io_region_T_6, 1, 1) @[CircuitMath.scala 30:8]
    node _io_region_T_8 = cat(_io_region_T_5, _io_region_T_7) @[Cat.scala 31:58]
    node _io_region_T_9 = cat(_io_region_T_3, _io_region_T_8) @[Cat.scala 31:58]
    node _io_region_T_10 = cat(_io_region_T_1, _io_region_T_9) @[Cat.scala 31:58]
    io.region <= _io_region_T_10 @[Taylor.scala 195:15]

  module ConstantSelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip order_idx : UInt<2>, a_select : SInt<15>, m_select : SInt<15>}

    inst boundarySelect of BoundarySelect @[Taylor.scala 212:48]
    boundarySelect.clock <= clock
    boundarySelect.reset <= reset
    boundarySelect.io.x <= io.x @[Taylor.scala 213:25]
    wire m_vector : SInt<15>[12][3] @[Taylor.scala 216:117]
    m_vector[0][0] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[0][1] <= asSInt(UInt<15>("h49")) @[Taylor.scala 216:117]
    m_vector[0][2] <= asSInt(UInt<15>("h35")) @[Taylor.scala 216:117]
    m_vector[0][3] <= asSInt(UInt<15>("h74")) @[Taylor.scala 216:117]
    m_vector[0][4] <= asSInt(UInt<15>("hd5")) @[Taylor.scala 216:117]
    m_vector[0][5] <= asSInt(UInt<15>("h179")) @[Taylor.scala 216:117]
    m_vector[0][6] <= asSInt(UInt<15>("h287")) @[Taylor.scala 216:117]
    m_vector[0][7] <= asSInt(UInt<15>("h32b")) @[Taylor.scala 216:117]
    m_vector[0][8] <= asSInt(UInt<15>("h38c")) @[Taylor.scala 216:117]
    m_vector[0][9] <= asSInt(UInt<15>("h3cb")) @[Taylor.scala 216:117]
    m_vector[0][10] <= asSInt(UInt<15>("h3b7")) @[Taylor.scala 216:117]
    m_vector[0][11] <= asSInt(UInt<15>("h400")) @[Taylor.scala 216:117]
    m_vector[1][0] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[1][1] <= asSInt(UInt<15>("hc")) @[Taylor.scala 216:117]
    m_vector[1][2] <= asSInt(UInt<15>("h3e")) @[Taylor.scala 216:117]
    m_vector[1][3] <= asSInt(UInt<15>("h5a")) @[Taylor.scala 216:117]
    m_vector[1][4] <= asSInt(UInt<15>("h8f")) @[Taylor.scala 216:117]
    m_vector[1][5] <= asSInt(UInt<15>("h105")) @[Taylor.scala 216:117]
    m_vector[1][6] <= asSInt(UInt<15>("h105")) @[Taylor.scala 216:117]
    m_vector[1][7] <= asSInt(UInt<15>("h8f")) @[Taylor.scala 216:117]
    m_vector[1][8] <= asSInt(UInt<15>("h5a")) @[Taylor.scala 216:117]
    m_vector[1][9] <= asSInt(UInt<15>("h3e")) @[Taylor.scala 216:117]
    m_vector[1][10] <= asSInt(UInt<15>("hc")) @[Taylor.scala 216:117]
    m_vector[1][11] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[2][0] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[2][1] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[2][2] <= asSInt(UInt<15>("hc")) @[Taylor.scala 216:117]
    m_vector[2][3] <= asSInt(UInt<15>("h16")) @[Taylor.scala 216:117]
    m_vector[2][4] <= asSInt(UInt<15>("h2c")) @[Taylor.scala 216:117]
    m_vector[2][5] <= asSInt(UInt<15>("h6c")) @[Taylor.scala 216:117]
    m_vector[2][6] <= asSInt(UInt<15>("h7f94")) @[Taylor.scala 216:117]
    m_vector[2][7] <= asSInt(UInt<15>("h7fd4")) @[Taylor.scala 216:117]
    m_vector[2][8] <= asSInt(UInt<15>("h7fea")) @[Taylor.scala 216:117]
    m_vector[2][9] <= asSInt(UInt<15>("h7ff4")) @[Taylor.scala 216:117]
    m_vector[2][10] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    m_vector[2][11] <= asSInt(UInt<15>("h0")) @[Taylor.scala 216:117]
    wire _a_vector_WIRE : SInt<15>[12] @[Taylor.scala 219:46]
    _a_vector_WIRE[0] <= asSInt(UInt<15>("h0")) @[Taylor.scala 219:46]
    _a_vector_WIRE[1] <= asSInt(UInt<15>("h0")) @[Taylor.scala 219:46]
    _a_vector_WIRE[2] <= asSInt(UInt<15>("hbe6")) @[Taylor.scala 219:46]
    _a_vector_WIRE[3] <= asSInt(UInt<15>("h880")) @[Taylor.scala 219:46]
    _a_vector_WIRE[4] <= asSInt(UInt<15>("h51a")) @[Taylor.scala 219:46]
    _a_vector_WIRE[5] <= asSInt(UInt<15>("h1b3")) @[Taylor.scala 219:46]
    _a_vector_WIRE[6] <= asSInt(UInt<15>("h7e4d")) @[Taylor.scala 219:46]
    _a_vector_WIRE[7] <= asSInt(UInt<15>("h7ae6")) @[Taylor.scala 219:46]
    _a_vector_WIRE[8] <= asSInt(UInt<15>("h7780")) @[Taylor.scala 219:46]
    _a_vector_WIRE[9] <= asSInt(UInt<15>("h741a")) @[Taylor.scala 219:46]
    _a_vector_WIRE[10] <= asSInt(UInt<15>("h0")) @[Taylor.scala 219:46]
    _a_vector_WIRE[11] <= asSInt(UInt<15>("h0")) @[Taylor.scala 219:46]
    reg a_vector : SInt<15>[12], clock with :
      reset => (reset, _a_vector_WIRE) @[Taylor.scala 219:38]
    io.a_select <= a_vector[boundarySelect.io.region] @[Taylor.scala 223:17]
    io.m_select <= m_vector[io.order_idx][boundarySelect.io.region] @[Taylor.scala 224:17]

  module TaylorExpansion :
    input clock : Clock
    input reset : Reset
    output io : { flip initialize : UInt<1>, flip compute_enable : UInt<1>, flip xa : SInt<15>, flip mrn : SInt<15>, output : SInt<15>}

    reg processed_input : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[Taylor.scala 241:40]
    reg exponentiatial_accumulator : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[Taylor.scala 242:51]
    reg scalar : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[Taylor.scala 243:31]
    reg product_accumulator : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[Taylor.scala 244:44]
    wire exponential_accumulator_output : SInt<15> @[Taylor.scala 247:52]
    wire product_result : SInt<15> @[Taylor.scala 248:36]
    node _product_result_T = mul(scalar, exponentiatial_accumulator) @[Taylor.scala 251:31]
    node _product_result_T_1 = shr(_product_result_T, 10) @[Taylor.scala 251:61]
    product_result <= _product_result_T_1 @[Taylor.scala 251:20]
    node _exponential_accumulator_output_T = mul(exponentiatial_accumulator, processed_input) @[Taylor.scala 252:67]
    node _exponential_accumulator_output_T_1 = shr(_exponential_accumulator_output_T, 10) @[Taylor.scala 252:86]
    exponential_accumulator_output <= _exponential_accumulator_output_T_1 @[Taylor.scala 252:36]
    io.output <= product_accumulator @[Taylor.scala 253:15]
    when io.initialize : @[Taylor.scala 255:26]
      processed_input <= io.xa @[Taylor.scala 256:25]
      exponentiatial_accumulator <= asSInt(UInt<12>("h400")) @[Taylor.scala 257:36]
      scalar <= io.mrn @[Taylor.scala 258:16]
      product_accumulator <= asSInt(UInt<1>("h0")) @[Taylor.scala 259:29]
    else :
      when io.compute_enable : @[Taylor.scala 260:36]
        processed_input <= processed_input @[Taylor.scala 261:25]
        exponentiatial_accumulator <= exponential_accumulator_output @[Taylor.scala 262:36]
        scalar <= io.mrn @[Taylor.scala 263:16]
        node _product_accumulator_T = add(product_result, product_accumulator) @[Taylor.scala 264:47]
        node _product_accumulator_T_1 = tail(_product_accumulator_T, 1) @[Taylor.scala 264:47]
        node _product_accumulator_T_2 = asSInt(_product_accumulator_T_1) @[Taylor.scala 264:47]
        product_accumulator <= _product_accumulator_T_2 @[Taylor.scala 264:29]
      else :
        processed_input <= processed_input @[Taylor.scala 266:25]
        exponentiatial_accumulator <= exponentiatial_accumulator @[Taylor.scala 267:36]
        scalar <= asSInt(UInt<1>("h0")) @[Taylor.scala 268:16]
        product_accumulator <= product_accumulator @[Taylor.scala 269:29]

  module UFSPT :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip input : SInt<15>, flip input_valid : UInt<1>, output : SInt<15>, output_valid : UInt<1>, input_ready : UInt<1>, dbg_state : UInt<3>, dbg_init : UInt<1>, dbg_comp : UInt<1>, dbg_idx : UInt<2>}

    reg current_state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Taylor.scala 292:38]
    inst constantSelect of ConstantSelect @[Taylor.scala 295:48]
    constantSelect.clock <= clock
    constantSelect.reset <= reset
    inst taylorExpansion of TaylorExpansion @[Taylor.scala 296:50]
    taylorExpansion.clock <= clock
    taylorExpansion.reset <= reset
    reg input_ready_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h1")) @[Taylor.scala 299:40]
    reg output_valid_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Taylor.scala 300:41]
    reg input_reg : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[Taylor.scala 301:34]
    reg m_order_idx : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Taylor.scala 302:36]
    reg m_order_max : UInt<2>, clock with :
      reset => (reset, UInt<2>("h2")) @[Taylor.scala 303:36]
    reg initialize_taylor_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Taylor.scala 305:46]
    reg compute_enable_taylor_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Taylor.scala 306:50]
    node _T = eq(UInt<2>("h0"), current_state) @[Taylor.scala 309:28]
    when _T : @[Taylor.scala 309:28]
      node _T_1 = and(io.input_valid, input_ready_reg) @[Taylor.scala 311:33]
      when _T_1 : @[Taylor.scala 311:53]
        current_state <= UInt<2>("h1") @[Taylor.scala 312:31]
      else :
        current_state <= UInt<2>("h0") @[Taylor.scala 314:31]
    else :
      node _T_2 = eq(UInt<2>("h1"), current_state) @[Taylor.scala 309:28]
      when _T_2 : @[Taylor.scala 309:28]
        current_state <= UInt<2>("h2") @[Taylor.scala 318:27]
      else :
        node _T_3 = eq(UInt<2>("h2"), current_state) @[Taylor.scala 309:28]
        when _T_3 : @[Taylor.scala 309:28]
          node _T_4 = eq(m_order_idx, m_order_max) @[Taylor.scala 322:31]
          when _T_4 : @[Taylor.scala 322:48]
            current_state <= UInt<2>("h0") @[Taylor.scala 323:31]
          else :
            current_state <= UInt<2>("h2") @[Taylor.scala 325:31]
    node _T_5 = eq(UInt<2>("h0"), current_state) @[Taylor.scala 331:28]
    when _T_5 : @[Taylor.scala 331:28]
      input_ready_reg <= UInt<1>("h1") @[Taylor.scala 333:29]
      output_valid_reg <= UInt<1>("h1") @[Taylor.scala 334:30]
      input_reg <= input_reg @[Taylor.scala 335:23]
      m_order_idx <= UInt<1>("h0") @[Taylor.scala 336:25]
      initialize_taylor_reg <= UInt<1>("h0") @[Taylor.scala 337:35]
      compute_enable_taylor_reg <= UInt<1>("h0") @[Taylor.scala 338:39]
    else :
      node _T_6 = eq(UInt<2>("h1"), current_state) @[Taylor.scala 331:28]
      when _T_6 : @[Taylor.scala 331:28]
        input_ready_reg <= UInt<1>("h0") @[Taylor.scala 341:29]
        output_valid_reg <= UInt<1>("h0") @[Taylor.scala 342:30]
        input_reg <= io.input @[Taylor.scala 343:23]
        m_order_idx <= UInt<1>("h0") @[Taylor.scala 344:25]
        initialize_taylor_reg <= UInt<1>("h1") @[Taylor.scala 345:35]
        compute_enable_taylor_reg <= UInt<1>("h0") @[Taylor.scala 346:39]
      else :
        node _T_7 = eq(UInt<2>("h2"), current_state) @[Taylor.scala 331:28]
        when _T_7 : @[Taylor.scala 331:28]
          input_ready_reg <= UInt<1>("h0") @[Taylor.scala 349:29]
          output_valid_reg <= UInt<1>("h0") @[Taylor.scala 350:30]
          input_reg <= input_reg @[Taylor.scala 351:23]
          node _m_order_idx_T = add(m_order_idx, UInt<1>("h1")) @[Taylor.scala 352:40]
          node _m_order_idx_T_1 = tail(_m_order_idx_T, 1) @[Taylor.scala 352:40]
          m_order_idx <= _m_order_idx_T_1 @[Taylor.scala 352:25]
          initialize_taylor_reg <= UInt<1>("h0") @[Taylor.scala 353:35]
          compute_enable_taylor_reg <= UInt<1>("h1") @[Taylor.scala 354:39]
    constantSelect.io.x <= input_reg @[Taylor.scala 359:25]
    constantSelect.io.order_idx <= m_order_idx @[Taylor.scala 360:33]
    taylorExpansion.io.mrn <= constantSelect.io.m_select @[Taylor.scala 362:28]
    node _taylorExpansion_io_xa_T = add(constantSelect.io.a_select, io.input) @[Taylor.scala 364:57]
    node _taylorExpansion_io_xa_T_1 = tail(_taylorExpansion_io_xa_T, 1) @[Taylor.scala 364:57]
    node _taylorExpansion_io_xa_T_2 = asSInt(_taylorExpansion_io_xa_T_1) @[Taylor.scala 364:57]
    taylorExpansion.io.xa <= _taylorExpansion_io_xa_T_2 @[Taylor.scala 364:27]
    taylorExpansion.io.compute_enable <= compute_enable_taylor_reg @[Taylor.scala 365:39]
    taylorExpansion.io.initialize <= initialize_taylor_reg @[Taylor.scala 366:35]
    io.input_ready <= input_ready_reg @[Taylor.scala 369:20]
    io.output_valid <= output_valid_reg @[Taylor.scala 370:21]
    io.output <= taylorExpansion.io.output @[Taylor.scala 371:15]
    io.dbg_state <= current_state @[Taylor.scala 374:18]
    io.dbg_comp <= compute_enable_taylor_reg @[Taylor.scala 375:17]
    io.dbg_init <= initialize_taylor_reg @[Taylor.scala 376:17]
    io.dbg_idx <= m_order_idx @[Taylor.scala 377:16]

