#!/bin/bash

cd /sys/bus/w1/devices/28-00000a54a3a5

while true; do 


cat w1_slave |grep 't=' |awk -F= '{print substr($2, 1, 2)}'

sleep 1

done
