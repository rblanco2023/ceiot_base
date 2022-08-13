#! /bin/bash

TEMP=$(curl https://api.openweathermap.org/data/2.5/weather\?appid\=\{ebfacfed3054e999df1c086445cc6e6a\}\&q\=bariloche -H "Accept: application/json" | jq '.main.temp'-273)

SENSOR_ID=02
NAME='Bariloche'

wget -O - --method=POST http://localhost:8080/device --body-data="id=$SENSOR_ID&n=$NAME&k=$TEMP"

