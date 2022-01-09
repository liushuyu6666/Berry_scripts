#!/bin/bash

temp=$(cat /sys/class/thermal/thermal_zone0/temp)
timestamp=$(date '+%Y%m%d_%H:%M:%S')

if [[ $temp -gt 60000 ]]
then
        echo "${timestamp}: temperature is high, need to shut down this raspberry pi"
        sudo /sbin/shutdown -h 1
else
        echo "${timestamp}: thermal_monitor is running, current temperature is ${temp}"
fi