#!/bin/bash

rot=16
gelb=20
gruen=21

pinctrl set $rot, $gelb, $gruen op
pinctrl set $rot, $gelb, $gruen dl
while true
do

set $gelb dl
pinctrl set $rot dh
sleep 1
set $gelb dh
sleep 1
set pinctrl set $rot,$gelb dl
set pinctrl set $gruen dh
sleep 1
set pinctrl set $gruen dl
sleep 1
set pinctrl set $gelb dh
sleep 1
done

