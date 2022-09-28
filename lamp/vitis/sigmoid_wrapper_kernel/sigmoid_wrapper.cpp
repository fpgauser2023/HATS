#include <stdint.h>
#include <hls_stream.h>

#define OUTPUT_SIZE 256

extern "C" {

void sigmoid_wrapper(
				uint32_t *in,
				uint32_t *out,

				 hls::stream<uint32_t>& in_stream,
				 hls::stream<uint32_t>& out_stream)
{
	
	for (int i = 0; i < OUTPUT_SIZE; i++)
		#pragma HLS pipeline
		in_stream << in[i];

	for (int i = 0; i < OUTPUT_SIZE; i++)
		#pragma HLS pipeline
		out[i] = out_stream.read();
}
}