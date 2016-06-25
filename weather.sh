#!/bin/bash

source config.ini

while true
do
	wget -O weather.html http://tut.by 2> /dev/null
	grep '<span class="w-weather_temt">' weather.html | sed -e 's/<span class="w-weather_temt">//g' | sed -e 's/&deg;<\/span>//g' | sed -e 's/^[\t]*//g'
	rm ./weather.html
	sleep $interval
done


