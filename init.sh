#!/bin/bash
GPT4ALL=models/ggml-gpt4all-j
LLMA2=models/llma2-7b
BLOOM=models/bloom-3b

if [ ! -f "$GPT4ALL" ]; then
    wget https://gpt4all.io/models/ggml-gpt4all-j.bin -O "$GPT4ALL"
fi
if [ ! -f "$LLMA2" ]; then
    wget https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/resolve/main/llama-2-7b-chat.ggmlv3.q6_K.bin -O "$LLMA2"
fi
if [ ! -f "$BLOOM" ]; then
    wget https://huggingface.co/rustformers/bloom-ggml/resolve/main/bloom-3b-q4_0.bin -O "$BLOOM"
fi
