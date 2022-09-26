circuit SPT :
  module CheckBoundary :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module CheckBoundary_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip B_i : SInt<15>, leq_B_i : UInt<1>, gt_B_i : UInt<1>}

    node _io_leq_B_i_T = leq(io.x, io.B_i) @[SPT.scala 142:25]
    io.leq_B_i <= _io_leq_B_i_T @[SPT.scala 142:16]
    node _io_gt_B_i_T = gt(io.x, io.B_i) @[SPT.scala 143:24]
    io.gt_B_i <= _io_gt_B_i_T @[SPT.scala 143:15]

  module BoundarySelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, region : UInt<4>}

    wire _boundary_vector_WIRE : SInt<15>[9] @[SPT.scala 155:53]
    _boundary_vector_WIRE[0] <= asSInt(UInt<15>("h6800")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[1] <= asSInt(UInt<15>("h6800")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[2] <= asSInt(UInt<15>("h7000")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[3] <= asSInt(UInt<15>("h7800")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[4] <= asSInt(UInt<15>("h0")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[5] <= asSInt(UInt<15>("h800")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[6] <= asSInt(UInt<15>("h1000")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[7] <= asSInt(UInt<15>("h1800")) @[SPT.scala 155:53]
    _boundary_vector_WIRE[8] <= asSInt(UInt<15>("h1800")) @[SPT.scala 155:53]
    reg boundary_vector : SInt<15>[9], clock with :
      reset => (reset, _boundary_vector_WIRE) @[SPT.scala 155:45]
    inst checkBoundaryModules_0 of CheckBoundary @[SPT.scala 160:40]
    checkBoundaryModules_0.clock <= clock
    checkBoundaryModules_0.reset <= reset
    checkBoundaryModules_0.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_0.io.B_i <= boundary_vector[0] @[SPT.scala 162:35]
    inst checkBoundaryModules_1 of CheckBoundary_1 @[SPT.scala 160:40]
    checkBoundaryModules_1.clock <= clock
    checkBoundaryModules_1.reset <= reset
    checkBoundaryModules_1.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_1.io.B_i <= boundary_vector[1] @[SPT.scala 162:35]
    inst checkBoundaryModules_2 of CheckBoundary_2 @[SPT.scala 160:40]
    checkBoundaryModules_2.clock <= clock
    checkBoundaryModules_2.reset <= reset
    checkBoundaryModules_2.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_2.io.B_i <= boundary_vector[2] @[SPT.scala 162:35]
    inst checkBoundaryModules_3 of CheckBoundary_3 @[SPT.scala 160:40]
    checkBoundaryModules_3.clock <= clock
    checkBoundaryModules_3.reset <= reset
    checkBoundaryModules_3.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_3.io.B_i <= boundary_vector[3] @[SPT.scala 162:35]
    inst checkBoundaryModules_4 of CheckBoundary_4 @[SPT.scala 160:40]
    checkBoundaryModules_4.clock <= clock
    checkBoundaryModules_4.reset <= reset
    checkBoundaryModules_4.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_4.io.B_i <= boundary_vector[4] @[SPT.scala 162:35]
    inst checkBoundaryModules_5 of CheckBoundary_5 @[SPT.scala 160:40]
    checkBoundaryModules_5.clock <= clock
    checkBoundaryModules_5.reset <= reset
    checkBoundaryModules_5.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_5.io.B_i <= boundary_vector[5] @[SPT.scala 162:35]
    inst checkBoundaryModules_6 of CheckBoundary_6 @[SPT.scala 160:40]
    checkBoundaryModules_6.clock <= clock
    checkBoundaryModules_6.reset <= reset
    checkBoundaryModules_6.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_6.io.B_i <= boundary_vector[6] @[SPT.scala 162:35]
    inst checkBoundaryModules_7 of CheckBoundary_7 @[SPT.scala 160:40]
    checkBoundaryModules_7.clock <= clock
    checkBoundaryModules_7.reset <= reset
    checkBoundaryModules_7.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_7.io.B_i <= boundary_vector[7] @[SPT.scala 162:35]
    inst checkBoundaryModules_8 of CheckBoundary_8 @[SPT.scala 160:40]
    checkBoundaryModules_8.clock <= clock
    checkBoundaryModules_8.reset <= reset
    checkBoundaryModules_8.io.x <= io.x @[SPT.scala 161:33]
    checkBoundaryModules_8.io.B_i <= boundary_vector[8] @[SPT.scala 162:35]
    node OHencodedIdx_1 = and(checkBoundaryModules_0.io.gt_B_i, checkBoundaryModules_1.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_2 = and(checkBoundaryModules_1.io.gt_B_i, checkBoundaryModules_2.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_3 = and(checkBoundaryModules_2.io.gt_B_i, checkBoundaryModules_3.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_4 = and(checkBoundaryModules_3.io.gt_B_i, checkBoundaryModules_4.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_5 = and(checkBoundaryModules_4.io.gt_B_i, checkBoundaryModules_5.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_6 = and(checkBoundaryModules_5.io.gt_B_i, checkBoundaryModules_6.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_7 = and(checkBoundaryModules_6.io.gt_B_i, checkBoundaryModules_7.io.leq_B_i) @[SPT.scala 173:53]
    node OHencodedIdx_8 = and(checkBoundaryModules_7.io.gt_B_i, checkBoundaryModules_8.io.leq_B_i) @[SPT.scala 173:53]
    node io_region_lo_lo = cat(OHencodedIdx_1, checkBoundaryModules_0.io.leq_B_i) @[Cat.scala 31:58]
    node io_region_lo_hi_hi = cat(OHencodedIdx_4, OHencodedIdx_3) @[Cat.scala 31:58]
    node io_region_lo_hi = cat(io_region_lo_hi_hi, OHencodedIdx_2) @[Cat.scala 31:58]
    node io_region_lo = cat(io_region_lo_hi, io_region_lo_lo) @[Cat.scala 31:58]
    node io_region_hi_lo = cat(OHencodedIdx_6, OHencodedIdx_5) @[Cat.scala 31:58]
    node io_region_hi_hi_hi = cat(checkBoundaryModules_8.io.gt_B_i, OHencodedIdx_8) @[Cat.scala 31:58]
    node io_region_hi_hi = cat(io_region_hi_hi_hi, OHencodedIdx_7) @[Cat.scala 31:58]
    node io_region_hi = cat(io_region_hi_hi, io_region_hi_lo) @[Cat.scala 31:58]
    node _io_region_T = cat(io_region_hi, io_region_lo) @[Cat.scala 31:58]
    node io_region_hi_1 = bits(_io_region_T, 9, 8) @[OneHot.scala 30:18]
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
    io.region <= _io_region_T_10 @[SPT.scala 178:15]

  module ConstantSelect :
    input clock : Clock
    input reset : Reset
    output io : { flip x : SInt<15>, flip order_idx : UInt<2>, a_select : SInt<15>, m_select : SInt<15>}

    inst boundarySelect of BoundarySelect @[SPT.scala 194:48]
    boundarySelect.clock <= clock
    boundarySelect.reset <= reset
    boundarySelect.io.x <= io.x @[SPT.scala 195:25]
    wire m_vector : SInt<15>[10][3] @[SPT.scala 198:117]
    m_vector[0][0] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[0][1] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[0][2] <= asSInt(UInt<15>("h7")) @[SPT.scala 198:117]
    m_vector[0][3] <= asSInt(UInt<15>("h31")) @[SPT.scala 198:117]
    m_vector[0][4] <= asSInt(UInt<15>("h113")) @[SPT.scala 198:117]
    m_vector[0][5] <= asSInt(UInt<15>("h2ed")) @[SPT.scala 198:117]
    m_vector[0][6] <= asSInt(UInt<15>("h3cf")) @[SPT.scala 198:117]
    m_vector[0][7] <= asSInt(UInt<15>("h3f9")) @[SPT.scala 198:117]
    m_vector[0][8] <= asSInt(UInt<15>("h3fd")) @[SPT.scala 198:117]
    m_vector[0][9] <= asSInt(UInt<15>("h400")) @[SPT.scala 198:117]
    m_vector[1][0] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[1][1] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[1][2] <= asSInt(UInt<15>("h7")) @[SPT.scala 198:117]
    m_vector[1][3] <= asSInt(UInt<15>("h2e")) @[SPT.scala 198:117]
    m_vector[1][4] <= asSInt(UInt<15>("hc9")) @[SPT.scala 198:117]
    m_vector[1][5] <= asSInt(UInt<15>("hc9")) @[SPT.scala 198:117]
    m_vector[1][6] <= asSInt(UInt<15>("h2e")) @[SPT.scala 198:117]
    m_vector[1][7] <= asSInt(UInt<15>("h7")) @[SPT.scala 198:117]
    m_vector[1][8] <= asSInt(UInt<15>("h3")) @[SPT.scala 198:117]
    m_vector[1][9] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[2][0] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[2][1] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    m_vector[2][2] <= asSInt(UInt<15>("h3")) @[SPT.scala 198:117]
    m_vector[2][3] <= asSInt(UInt<15>("h15")) @[SPT.scala 198:117]
    m_vector[2][4] <= asSInt(UInt<15>("h2f")) @[SPT.scala 198:117]
    m_vector[2][5] <= asSInt(UInt<15>("h7fd1")) @[SPT.scala 198:117]
    m_vector[2][6] <= asSInt(UInt<15>("h7feb")) @[SPT.scala 198:117]
    m_vector[2][7] <= asSInt(UInt<15>("h7ffd")) @[SPT.scala 198:117]
    m_vector[2][8] <= asSInt(UInt<15>("h7fff")) @[SPT.scala 198:117]
    m_vector[2][9] <= asSInt(UInt<15>("h0")) @[SPT.scala 198:117]
    wire _a_vector_WIRE : SInt<15>[10] @[SPT.scala 201:46]
    _a_vector_WIRE[0] <= asSInt(UInt<15>("h0")) @[SPT.scala 201:46]
    _a_vector_WIRE[1] <= asSInt(UInt<15>("h1800")) @[SPT.scala 201:46]
    _a_vector_WIRE[2] <= asSInt(UInt<15>("h1400")) @[SPT.scala 201:46]
    _a_vector_WIRE[3] <= asSInt(UInt<15>("hc00")) @[SPT.scala 201:46]
    _a_vector_WIRE[4] <= asSInt(UInt<15>("h400")) @[SPT.scala 201:46]
    _a_vector_WIRE[5] <= asSInt(UInt<15>("h7c00")) @[SPT.scala 201:46]
    _a_vector_WIRE[6] <= asSInt(UInt<15>("h7400")) @[SPT.scala 201:46]
    _a_vector_WIRE[7] <= asSInt(UInt<15>("h6c00")) @[SPT.scala 201:46]
    _a_vector_WIRE[8] <= asSInt(UInt<15>("h6800")) @[SPT.scala 201:46]
    _a_vector_WIRE[9] <= asSInt(UInt<15>("h0")) @[SPT.scala 201:46]
    reg a_vector : SInt<15>[10], clock with :
      reset => (reset, _a_vector_WIRE) @[SPT.scala 201:38]
    io.a_select <= a_vector[boundarySelect.io.region] @[SPT.scala 205:17]
    io.m_select <= m_vector[io.order_idx][boundarySelect.io.region] @[SPT.scala 206:17]

  module TaylorExpansion :
    input clock : Clock
    input reset : Reset
    output io : { flip initialize : UInt<1>, flip compute_enable : UInt<1>, flip xa : SInt<15>, flip mrn : SInt<15>, output : SInt<15>}

    reg processed_input : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[SPT.scala 223:40]
    reg exponential_accumulator : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[SPT.scala 224:48]
    reg scalar : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[SPT.scala 225:31]
    reg product_accumulator : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[SPT.scala 226:44]
    wire exponential_accumulator_output : SInt<15> @[SPT.scala 229:52]
    wire product_result : SInt<15> @[SPT.scala 230:36]
    node _product_result_T = mul(scalar, exponential_accumulator) @[SPT.scala 233:31]
    node _product_result_T_1 = shr(_product_result_T, 10) @[SPT.scala 233:58]
    product_result <= _product_result_T_1 @[SPT.scala 233:20]
    node _exponential_accumulator_output_T = mul(exponential_accumulator, processed_input) @[SPT.scala 234:64]
    node _exponential_accumulator_output_T_1 = shr(_exponential_accumulator_output_T, 10) @[SPT.scala 234:83]
    exponential_accumulator_output <= _exponential_accumulator_output_T_1 @[SPT.scala 234:36]
    io.output <= product_accumulator @[SPT.scala 235:15]
    when io.initialize : @[SPT.scala 237:26]
      processed_input <= io.xa @[SPT.scala 238:25]
      exponential_accumulator <= asSInt(UInt<12>("h400")) @[SPT.scala 239:33]
      scalar <= io.mrn @[SPT.scala 240:16]
      product_accumulator <= asSInt(UInt<1>("h0")) @[SPT.scala 241:29]
    else :
      when io.compute_enable : @[SPT.scala 242:36]
        processed_input <= processed_input @[SPT.scala 243:25]
        exponential_accumulator <= exponential_accumulator_output @[SPT.scala 244:33]
        scalar <= io.mrn @[SPT.scala 245:16]
        node _product_accumulator_T = add(product_result, product_accumulator) @[SPT.scala 246:47]
        node _product_accumulator_T_1 = tail(_product_accumulator_T, 1) @[SPT.scala 246:47]
        node _product_accumulator_T_2 = asSInt(_product_accumulator_T_1) @[SPT.scala 246:47]
        product_accumulator <= _product_accumulator_T_2 @[SPT.scala 246:29]
      else :
        processed_input <= processed_input @[SPT.scala 248:25]
        exponential_accumulator <= exponential_accumulator @[SPT.scala 249:33]
        scalar <= asSInt(UInt<1>("h0")) @[SPT.scala 250:16]
        product_accumulator <= product_accumulator @[SPT.scala 251:29]

  module SPT :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip input : SInt<15>, flip input_valid : UInt<1>, output : SInt<15>, output_valid : UInt<1>, input_ready : UInt<1>, dbg_state : UInt<3>, dbg_init : UInt<1>, dbg_comp : UInt<1>, dbg_idx : UInt<2>}

    reg current_state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[SPT.scala 274:38]
    inst constantSelect of ConstantSelect @[SPT.scala 277:48]
    constantSelect.clock <= clock
    constantSelect.reset <= reset
    inst taylorExpansion of TaylorExpansion @[SPT.scala 278:50]
    taylorExpansion.clock <= clock
    taylorExpansion.reset <= reset
    reg input_ready_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h1")) @[SPT.scala 281:40]
    reg output_valid_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[SPT.scala 282:41]
    reg input_reg : SInt<15>, clock with :
      reset => (reset, asSInt(UInt<15>("h0"))) @[SPT.scala 283:34]
    reg m_order_idx : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[SPT.scala 284:36]
    reg m_order_max : UInt<2>, clock with :
      reset => (reset, UInt<2>("h2")) @[SPT.scala 285:36]
    reg initialize_taylor_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[SPT.scala 287:46]
    reg compute_enable_taylor_reg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[SPT.scala 288:50]
    node _T = eq(UInt<2>("h0"), current_state) @[SPT.scala 291:28]
    when _T : @[SPT.scala 291:28]
      node _T_1 = and(io.input_valid, input_ready_reg) @[SPT.scala 293:33]
      when _T_1 : @[SPT.scala 293:53]
        current_state <= UInt<2>("h1") @[SPT.scala 294:31]
      else :
        current_state <= UInt<2>("h0") @[SPT.scala 296:31]
    else :
      node _T_2 = eq(UInt<2>("h1"), current_state) @[SPT.scala 291:28]
      when _T_2 : @[SPT.scala 291:28]
        current_state <= UInt<2>("h2") @[SPT.scala 300:27]
      else :
        node _T_3 = eq(UInt<2>("h2"), current_state) @[SPT.scala 291:28]
        when _T_3 : @[SPT.scala 291:28]
          node _T_4 = eq(m_order_idx, m_order_max) @[SPT.scala 304:31]
          when _T_4 : @[SPT.scala 304:48]
            current_state <= UInt<2>("h0") @[SPT.scala 305:31]
          else :
            current_state <= UInt<2>("h2") @[SPT.scala 307:31]
    node _T_5 = eq(UInt<2>("h0"), current_state) @[SPT.scala 313:28]
    when _T_5 : @[SPT.scala 313:28]
      input_ready_reg <= UInt<1>("h1") @[SPT.scala 315:29]
      output_valid_reg <= UInt<1>("h1") @[SPT.scala 316:30]
      input_reg <= input_reg @[SPT.scala 317:23]
      m_order_idx <= UInt<1>("h0") @[SPT.scala 318:25]
      initialize_taylor_reg <= UInt<1>("h0") @[SPT.scala 319:35]
      compute_enable_taylor_reg <= UInt<1>("h0") @[SPT.scala 320:39]
    else :
      node _T_6 = eq(UInt<2>("h1"), current_state) @[SPT.scala 313:28]
      when _T_6 : @[SPT.scala 313:28]
        input_ready_reg <= UInt<1>("h0") @[SPT.scala 323:29]
        output_valid_reg <= UInt<1>("h0") @[SPT.scala 324:30]
        input_reg <= io.input @[SPT.scala 325:23]
        m_order_idx <= UInt<1>("h0") @[SPT.scala 326:25]
        initialize_taylor_reg <= UInt<1>("h1") @[SPT.scala 327:35]
        compute_enable_taylor_reg <= UInt<1>("h0") @[SPT.scala 328:39]
      else :
        node _T_7 = eq(UInt<2>("h2"), current_state) @[SPT.scala 313:28]
        when _T_7 : @[SPT.scala 313:28]
          input_ready_reg <= UInt<1>("h0") @[SPT.scala 331:29]
          output_valid_reg <= UInt<1>("h0") @[SPT.scala 332:30]
          input_reg <= input_reg @[SPT.scala 333:23]
          node _m_order_idx_T = add(m_order_idx, UInt<1>("h1")) @[SPT.scala 334:40]
          node _m_order_idx_T_1 = tail(_m_order_idx_T, 1) @[SPT.scala 334:40]
          m_order_idx <= _m_order_idx_T_1 @[SPT.scala 334:25]
          initialize_taylor_reg <= UInt<1>("h0") @[SPT.scala 335:35]
          compute_enable_taylor_reg <= UInt<1>("h1") @[SPT.scala 336:39]
    constantSelect.io.x <= input_reg @[SPT.scala 341:25]
    constantSelect.io.order_idx <= m_order_idx @[SPT.scala 342:33]
    taylorExpansion.io.mrn <= constantSelect.io.m_select @[SPT.scala 344:28]
    node _taylorExpansion_io_xa_T = add(io.input, constantSelect.io.a_select) @[SPT.scala 346:39]
    node _taylorExpansion_io_xa_T_1 = tail(_taylorExpansion_io_xa_T, 1) @[SPT.scala 346:39]
    node _taylorExpansion_io_xa_T_2 = asSInt(_taylorExpansion_io_xa_T_1) @[SPT.scala 346:39]
    taylorExpansion.io.xa <= _taylorExpansion_io_xa_T_2 @[SPT.scala 346:27]
    taylorExpansion.io.compute_enable <= compute_enable_taylor_reg @[SPT.scala 347:39]
    taylorExpansion.io.initialize <= initialize_taylor_reg @[SPT.scala 348:35]
    io.input_ready <= input_ready_reg @[SPT.scala 351:20]
    io.output_valid <= output_valid_reg @[SPT.scala 352:21]
    io.output <= taylorExpansion.io.output @[SPT.scala 353:15]
    io.dbg_state <= current_state @[SPT.scala 356:18]
    io.dbg_comp <= compute_enable_taylor_reg @[SPT.scala 357:17]
    io.dbg_init <= initialize_taylor_reg @[SPT.scala 358:17]
    io.dbg_idx <= m_order_idx @[SPT.scala 359:16]

