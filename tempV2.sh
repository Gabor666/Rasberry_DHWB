#!/bin/bash

while true;  do
vartemp=`cat /sys/bus/w1/devices/28-00000a54a3a5/w1_slave | grep t | sed 's/.*t=\([0-9][0-9]\)\([0-9][0-9][0-9]\)/\1.\2/'`
rrdupdate /home/gabor/temperatur1.rrd N:$vartemp
sleep 5
echo $vartemp 

done 
