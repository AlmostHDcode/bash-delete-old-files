# bash-delete-old-files
Bash script to delete old files

in this sample script I get the current date, subtract a week from the current date, then create an array to hold a list of paths to check. I have a secondary SSD that I use to store backups. This scripts will loop through paths on this ssd and find and delete any files older than a week.
