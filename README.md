# ModuleLLM_MeloTTS_jp_test


# abst
ModuleLLMのStackFlow v1.7.0 で、MeloTTS  Japanese support が導入されました。これの評価を行いました。


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

```
root@m5stack-LLM:~# 
```

```
curl -X POST "http://localhost:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "わたしはスタックチャンです",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk1.mp3

curl -X POST "http://localhost:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "おはよう、こんにちは、こんばんは",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk2.mp3

curl -X POST "http://localhost:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "ありがとう、さようなら、愛しき恋人よ",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk3.mp3

curl -X POST "http://localhost:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "吾輩は猫である、名前はまだない",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk4.mp3

```


  
