#!/bin/bash
#
#capture the current date and store it as YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

#set source and destination
tresorit_source_dir="/ntfs/tresorit/"
tresorit_destination_dir="/nas/backup/Tresorit/"
home_destination_dir="/nas/backup/Desktop-home/"
logs_dir="/nas/backup/logs/"
exclude_dir=".cache"

#set rsync arguments
rsync_tresorit_options="-avb --backup-dir $tresorit_destination_dir/$current_date --delete --no-o --no-g --no-perms --info=progress2"
rsync_home_options="-avb --exclude $exclude_dir --backup-dir $home_destination_dir/$current_date --delete --no-o --no-g --no-perms --info=progress2"

#sshpass -p $(cat ~/.sshpass.txt) rsync -avh -e 'ssh -p 58' /ntfs/tresorit/ Dad@192.168.1.185::Backup/Tresorit/
#sshpass -p $(cat ~/.sshpass.txt) rsync -avh -e 'ssh -p 58' ~/ Dad@192.168.1.185::Backup/Desktop-home/
#
#run rsync
rsync $rsync_home_options $HOME $home_destination_dir/current # >> $logs_dir/backup_home_$current_date.log
rsync $rsync_tresorit_options $tresorit_source_dir $tresorit_destination_dir/current # >> $logs_dir/backup_tresorit_$current_date.log
