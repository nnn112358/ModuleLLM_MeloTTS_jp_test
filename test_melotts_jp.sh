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
