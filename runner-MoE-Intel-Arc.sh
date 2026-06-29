#!/bin/sh 
cd ~/llama.cpp
source /opt/intel/oneapi/setvars.sh # Comment out if you don't use SYCL
# Replace with the path to you model
# You can change the comtext window size
# You can also change the port a convenient one
~/llama.cpp/build/bin/llama-server    -m /path/to/model.gguf \
	--no-mmap \
	-np 1 \
	-c 128000 \
	--port 8080 \
