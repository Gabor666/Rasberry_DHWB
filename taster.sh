#!/bin/bash


while true; do



if pinctrl get 13 |  grep -q "hi" ; then

echo "21" > /sys/class/gpio/export
echo "out" >/sys/class/gpio/gpio16/direction
echo "1"> /sys/class/gpio/gpio16/value

else

echo "0" > /sys/class/gpio/gpio16/value

fi 
sleep 1

done

