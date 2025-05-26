# ModuleLLM_MeloTTS_jp_test


# abst
ModuleLLMのStackFlow v1.7.0 で、MeloTTS  Japanese support が導入されました。これの評価を行いました。

# Result

```
OK = jp_talk1.mp3: わたしはスタックチャンです 
NG === jp_talk2.mp3: おはよう、こんにちは、こんばんは 
NG(おわよう、と聞こえる) === jp_talk2-1.mp3: おはよう、おはよう、おはよう 
NG(かんごば、と聞こえる) === jp_talk2-2.mp3: こんにちは、こんにちは、こんにちは 
OK === jp_talk2-3.mp3: こんばんは、こんばんは、こんばんは 
OK === jp_talk3.mp3: ありがとう、さようなら、愛しき恋人よ 
OK === jp_talk4.mp3: 吾輩は猫である、名前はまだない 
OK === jp_talk5.mp3: もしもし。こちら、ネット通販文化モールの田中と申します。サントス・アンジェラ様のお電話でよろしいでしょうか。 
OK === jp_talk6.mp3: いただきます、ごちそうさま、おかわり 
OK === jp_talk7.mp3: 私は素人なもので。モジュールエルエルエムについておしえてください。
```

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
root@m5stack-LLM:~# apt install llm-sys llm-llm llm-vlm  llm-whisper llm-melotts llm-openai-api llm-model-melotts-en-us llm-model-melotts-ja-jp
root@m5stack-LLM:~# apt install ffmpeg
root@m5stack-LLM:~# reboot
```

```
root@m5stack-LLM:~# ./test_melotts_jp.sh
```

```./test_melotts_jp.sh
#!/bin/bash

echo "=== jp_talk1.mp3: わたしはスタックチャンです ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "わたしはスタックチャンです",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk1.mp3
echo

echo "=== jp_talk2.mp3: おはよう、こんにちは、こんばんは ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "おはよう、おはよう、おはよう",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk2.mp3
echo

echo "=== jp_talk2-1.mp3: おはよう、おはよう、おはよう ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "おはよう、おはよう、おはよう",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk2-1.mp3
echo

echo "=== jp_talk2-2.mp3: こんにちは、こんにちは、こんにちは ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "こんにちは、こんにちは、こんにちは",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk2-2.mp3
echo


echo "=== jp_talk2-3.mp3: こんばんは、こんばんは、こんばんは ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "こんばんは、こんばんは、こんばんは",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk2-3.mp3
echo


echo "=== jp_talk3.mp3: ありがとう、さようなら、愛しき恋人よ ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "ありがとう、さようなら、愛しき恋人よ",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk3.mp3
echo

echo "=== jp_talk4.mp3: 吾輩は猫である、名前はまだない ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "吾輩は猫である、名前はまだない",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk4.mp3
echo

echo "=== jp_talk5.mp3: もしもし。こちら、ネット通販文化モールの田中と申します。サントス・アンジェラ様のお電話でよろしいでしょうか。 ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "もしもし。こちら、ネット通販文化モールの田中と申します。サントス・アンジェラ様のお電話でよろしいでしょうか。",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk5.mp3
echo

echo "=== jp_talk6.mp3: いただきます、ごちそうさま、おかわり ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "いただきます、ごちそうさま、おかわり",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk6.mp3
echo

echo "=== jp_talk7.mp3: 私は素人なもので。モジュールエルエルエムについておしえてください。 ==="
time curl -X POST "http://192.168.20.13:8000/v1/audio/speech" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "melotts-ja-jp",
    "input": "質問よろしいですか？私は素人なもので。モジュールエルエルエムについておしえてください。",
    "voice": "alloy",
    "response_format": "mp3"
  }' \
  --output jp_talk7.mp3
echo


echo "=== 全ての音声ファイル生成完了 ==="

```


## Result

```
=== jp_talk1.mp3: わたしはスタックチャンです ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  7495    0  7353  100   142   1459     28  0:00:05  0:00:05 --:--:--  2432

real	0m5.045s
user	0m0.004s
sys	0m0.005s

=== jp_talk2.mp3: おはよう、こんにちは、こんばんは ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 12484    0 12339  100   145   2141     25  0:00:05  0:00:05 --:--:--  2599

real	0m5.768s
user	0m0.004s
sys	0m0.005s

=== jp_talk2-1.mp3: おはよう、おはよう、おはよう ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 12700    0 12555  100   145   2128     24  0:00:06  0:00:05  0:00:01  3233

real	0m5.904s
user	0m0.005s
sys	0m0.004s

=== jp_talk2-2.mp3: こんにちは、こんにちは、こんにちは ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 10873    0 10719  100   154   1919     27  0:00:05  0:00:05 --:--:--  3003

real	0m5.591s
user	0m0.005s
sys	0m0.005s

=== jp_talk2-3.mp3: こんばんは、こんばんは、こんばんは ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 12061    0 11907  100   154   2058     26  0:00:05  0:00:05 --:--:--  3158

real	0m5.793s
user	0m0.004s
sys	0m0.007s

=== jp_talk3.mp3: ありがとう、さようなら、愛しき恋人よ ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 15628    0 15471  100   157   2059     20  0:00:07  0:00:07 --:--:--  3443

real	0m7.518s
user	0m0.004s
sys	0m0.006s

=== jp_talk4.mp3: 吾輩は猫である、名前はまだない ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 12262    0 12114  100   148   1725     21  0:00:07  0:00:07 --:--:--  3025

real	0m7.029s
user	0m0.005s
sys	0m0.006s

=== jp_talk5.mp3: もしもし。こちら、ネット通販文化モールの田中と申します。サントス・アンジェラ様のお電話でよろしいでしょうか。 ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 29902    0 29637  100   265   2044     18  0:00:14  0:00:14 --:--:--  3591

real	0m14.504s
user	0m0.003s
sys	0m0.007s

=== jp_talk6.mp3: いただきます、ごちそうさま、おかわり ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 14008    0 13851  100   157   2049     23  0:00:06  0:00:06 --:--:--  2920

real	0m6.765s
user	0m0.005s
sys	0m0.004s

=== jp_talk7.mp3: 私は素人なもので。モジュールエルエルエムについておしえてください。 ===
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 24568    0 24336  100   232   1850     17  0:00:13  0:00:13 --:--:--  3060

real	0m13.157s
user	0m0.003s
sys	0m0.008s

=== 全ての音声ファイル生成完了 ===

```



  
