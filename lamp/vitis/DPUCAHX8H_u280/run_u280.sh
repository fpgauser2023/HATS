#Generate Pre-processor xo file
export CUR_DIR=$PWD

#Generate xclbin files
cd $CUR_DIR
make clean
make u280 SIGMOID_ACCEL=../../hls/ DPU_XO=./release_u280_xo/
