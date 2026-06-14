#!/bin/sh 
cd ~/llama.cpp
source /opt/intel/oneapi/setvars.sh 
~/llama.cpp/build/bin/llama-server    -m /path/to/model.gguf \ # Replace with the path to you model 
	--no-mmap \ 
	-np 1 \
	-c 128000 \ # You can change the comtext window size
	--port 8080 \ # You can also change the port a convenient one
