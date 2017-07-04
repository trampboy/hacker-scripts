#!/usr/bin/env bash

i=1
doSwipe(){
    echo "开始第${i}次"
    adb shell input swipe 200 500 650 500
    let "i++"
}

# 滑动数量，0=无限循环
count=$1

echo "开始滑动:${count}"
if [ ${count} -gt 0 ]; then
    while(( ${count}>0 )); do
        doSwipe
        let "count--"
    done
else
    while true; do
        doSwipe
    done
fi




