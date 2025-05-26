# ModuleLLM_MeloTTS_jp_test

## StackFlowをインストールする


```bash
root@m5stack-LLM:~# wget -qO /etc/apt/keyrings/StackFlow.gpg  \
https://repo.llm.m5stack.com/m5stack-apt-repo/key/StackFlow.gpg

root@m5stack-LLM:~# echo 'deb [arch=arm64 signed-by=/etc/apt/keyrings/StackFlow.gpg] \
https://repo.llm.m5stack.com/m5stack-apt-repo jammy ax630c' \
> /etc/apt/sources.list.d/StackFlow.list
```

```bash
root@m5stack-LLM:~# apt update
root@m5stack-LLM:~# apt install lib-llm
root@m5stack-LLM:~# apt install llm-sys llm-llm llm-vlm 
root@m5stack-LLM:~# apt install llm-whisper llm-melotts llm-openai-api
root@m5stack-LLM:~# apt install llm-model-melotts-en-us
root@m5stack-LLM:~# apt install llm-model-melotts-ja-jp
root@m5stack-LLM:~# apt install ffmpeg
root@m5stack-LLM:~# reboot
```
