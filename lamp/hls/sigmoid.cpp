#include <ap_fixed.h>
#include <hls_stream.h>
#include <stdint.h>

typedef ap_fixed<8, 4> dtype;

#define OUTPUT_SIZE             256

namespace hls {

extern "C"{

void sigmoid(uint32_t* in, uint32_t* out)
{
        static hls::stream<dtype> data_in;
        static hls::stream<dtype> data_out;

        for (int i = 0; i < OUTPUT_SIZE; i++)
                #pragma HLS pipeline
                data_in << dtype(in[i]);

        dtype tmp, result;

        for (int i = 0; i < OUTPUT_SIZE; i++)
        {
                #pragma HLS pipeline

                data_in >> tmp;

                if (tmp >= 0 && tmp < 3.4)
                        result = ((((dtype(0.75)) * tmp) / (dtype(1) + (tmp / dtype(2)))) + dtype(1)) ;

                else if (tmp >= 3.4 && tmp < 6)
                        result = (dtype(1.935409070603099) + (dtype(0.0458812946797165) * ((tmp / dtype(2)) - dtype(1.7))));

                else if (tmp > 6)
                        result = dtype(1.99505475368673);

                else if (tmp <= 0 && tmp > -3.4)
                        result = (dtype(-1) * ((dtype(-1.5/2) * tmp) / (dtype(1) + ((dtype(-1) * tmp)  / dtype(2)))) + dtype(1));

                else if (tmp <= -3.4 && tmp > -6)
                        result = (dtype(1) - (dtype(0.935409070603099) + (dtype(0.0458812946797165) * (((dtype(-1)*tmp) / dtype(2)) - dtype(1.7)))));

                else if (tmp <= -6)
                        result = dtype(0.00494524631327) ;

                result /= 2;

                data_out << result;
        }

        for (int i = 0; i < OUTPUT_SIZE; i++)
                #pragma HLS pipeline
                out[i] = data_out.read();
}
}
}
