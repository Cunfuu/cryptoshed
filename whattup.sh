#!/bin/bash
sleep 5m
price= cat yolo.json | jq '.price'
new= curl https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT | jq '.price'

if [ $price -gt $new ]
then
echo "hey new one is bigger" >> heyLISTEN.txt
elif [ $price -eq $new ]
then
echo "Yo thesea re equal" >> heyLISTEN.txt
else
echo "it was bigger 5 mins ago" >> heyLISTEN.txt
fi
curl https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT > yolo.json
sh whattup.sh