#!/bin/sh
# Modify these variables to suit your needs
LLM=/path/to/model
LANGUAGE=English
INPUTFILE=/path/to/themes
OUTPUTFILE=/path/to/dataset
INPUTTOKENS=150
OUTPUTTOKENS=500
while IFS= read -r THEMES
do
	~/llama.cpp/build/bin/llama-cli   -m $LLM -p "You are a specialist in ML dataset writing. Your task is to write a dataset on the topic: $THEME in ShareGPT format, in $LANGUAGE. The agent's response in the dataset must be structured, containing: an introduction, detailed reasoning, and a conclusion. The AI agent's response in the dataset should be approximately 500 tokens in size. The user's question in the dataset should be approximately 150 tokens in size, representing a complete prompt. The AI agent's response in the dataset must be divided into subsections. You must use only current and reliable information in the dataset. Your response must contain only the dataset in JSONL format; using other words is prohibited. The dataset should contain only important information; there should be no preambles or greetings." \
#		--no-mmap Uncomment --no-mmap for MoE.
		--no-display-prompt \
		--color off \
		-np 1 \
		--reasoning-format none \
		--simple-io \
		--single-turn \
		-c 16512 >> $OUTPUTFILE  
	done < "$INPUTFILE"
