#!/bin/bash

##############################
# Author : Arunkumar
# Version : v1

# This script will monitor the system cpu and ram and disc usage

#######################################

logfile=$HOME/system_monitor.log
echo "================================" >> "$logfile"
echo "===== System Health Check =====" >> "$logfile"
echo "Date: $(date)" >> "$logfile"

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

ram_usage=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')

disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "CPU Usage: $cpu_usage%" >> "$logfile"
echo "RAM Usage: $ram_usage%" >> "$logfile"
echo "Disk Usage: $disk_usage%" >> "$logfile"

if (( ${cpu_usage%.*} > 80 )); then
    echo "ALERT: CPU usage is above 80%" >> "$logfile"
fi

if (( ${ram_usage%.*} > 80 )); then
    echo "ALERT: RAM usage is above 80%" >> "$logfile"
fi

echo "================================" >> "$logfile"

