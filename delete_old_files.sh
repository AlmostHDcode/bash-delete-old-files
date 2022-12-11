#!/bin/bash

#Author: AlmostHDcode

#get current date
cur_date=$(date +%Y-%m-%d)
#subtract a week from current date
last_wk="$(date -d "$cur_date - 7 days" +%Y-%m-%d)"

#list of paths to check
declare -a paths=(
[0]="/SSD/backups/bin/"
[1]="/SSD/backups/Documents/"
[2]="/SSD/backups/etc/"
[3]="/SSD/backups/lib/"
[4]="/SSD/backups/Music/"
[5]="/SSD/backups/Pictures/"
[6]="/SSD/backups/Playlists/"
[7]="/SSD/backups/Scripts/"
[8]="/SSD/backups/usr/"
[9]="/SSD/backups/var/"
[10]="/SSD/backups/Videos/"
)

#loop through the paths list, find and delete all files older than a week
for i in ${paths[@]} 
do
	find "$i" -type f -not -newermt "$last_wk" -delete
done
