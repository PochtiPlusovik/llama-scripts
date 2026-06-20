This repository contains a bash script to run LLMs using llama.cpp.

Installation Instructions for MoE Model Script on llama.cpp Compiled with SYCL Support.

To install, clone the repository:
`git clone https://github.com/PochtiPlusovik/llama-scripts`.
Make the script executable:
`cd ~/llama-scripts && chmod a+x runner-MoE-Intel-Arc.sh`.
Change the model path on line 4 of the script using a text editor. You can view the list of installed models with the following command:
`sudo find / -name "*.gguf"`.
Run the script:
`./runner-MoE-Intel-Arc.sh`.

Installation of a Script for Dataset Generation.

To install, clone the repository:
`git clone https://github.com/PochtiPlusovik/llama-scripts`.
In the script, you are required to update the variables LLM, INPUTFILE, and OUTPUTFILE. The INPUTFILE file must include the topics for generation, each starting on a new line. 
You can view the list of installed models with the following command:
`sudo find / -name "*.gguf"`.
Make the script executable:
`cd ~/llama-scripts && chmod a+x generate-dataset`.
Run the script:
`./generate-dataset`.

The scripts were tested on Arch Linux and Intel Arc B580 with the Qwen 3.6-A3B model. These scripts should work on other backends and graphics cards, but testing has not been performed
