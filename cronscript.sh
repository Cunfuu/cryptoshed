#!/bin/bash
curl https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT > yolo.json
echo "we start with:" >> heyLISTEN.txt
curl https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT | jq '.price' >> heyLISTEN.txt
sh whattup.sh