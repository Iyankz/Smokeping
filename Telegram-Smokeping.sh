Bash

#!/bin/bash
# Script by Iyankz & Gemini

# ISI DATA DI BAWAH INI
TOKEN="MASUKKAN_TOKEN_BOT_DISINI"
CHAT_ID="MASUKKAN_CHAT_ID_DISINI"

# Variabel dari SmokePing:
# $1 = Nama Alert (hostdown/someloss)
# $2 = Nama Host
# $3 = Loss Rate
# $4 = RTT
# $5 = Status

MESSAGE="🚨 *SMOKEPING ALERT* 🚨%0A%0A📌 *Alert:* $1%0A🌐 *Target:* $2%0A📉 *Loss:* $3%0A⏱️ *RTT:* $4%0A📝 *Status:* $5"

if [ "$TOKEN" != "MASUKKAN_TOKEN_BOT_DISINI" ]; then
    curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
    -d "chat_id=$CHAT_ID" \
    -d "parse_mode=Markdown" \
    -d "text=$MESSAGE"
fi
