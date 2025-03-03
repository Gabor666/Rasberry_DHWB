#!/bin/bash
filename="/home/gabor/temperatur1.rrd"
rrdtool graph temperatur1.png \
	--imgformat 'PNG' \
	--width 640 \
	--height 100 \
	--start -1hour \
	--end now \
	--vertical-label "Grad Celsius" \
	--alt-autoscale \
	--title Temperatur \
	DEF:templ=$filename:templ:AVERAGE \
	AREA:templ#CCCCFF: \
	LINE1:templ#0000FF:'Temperatur DS18B20' \
	GPRINT:templ:MIN:"Min\\:%3.2lf °C " \
	GPRINT:templ:MAX:"Max\\:%3.2lf °C " \
	GPRINT:templ:AVERAGE:"Avg\\: %3.2lf °C" \
	GPRINT:templ:LAST:"Aktuell\\: %3.2lf °C" \

