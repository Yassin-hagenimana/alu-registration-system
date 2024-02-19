#!/bin/bash

# Remote server details
remote_username="64293e56bc62" 
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_backup_directory="/summative/1023-2024j"
# Local directory to backup
local_directory_to_backup="negpod_21-q1" 
# Perform the backup using rsync with SSH key authentication
rsync -avz -e "ssh -i /path/to/your/private/key" "$local_directory_to_backup" "$remote_username@$remote_host:$remote_backup_directory"

echo "Backup of $local_directory_to_backup to $remote_backup_directory on $remote_host completed."