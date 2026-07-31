#!/bin/bash

INPUT_FILE=/home/rashu/folders_name
OUTPUT_FOLDER=/mnt/c/Users/rashu/OneDrive/Desktop/Backup_Origen/Backup_147_Server

while IFS=$'\n' read -r f; do
	sudo mkdir $OUTPUT_FOLDER/$f
	cd $OUTPUT_FOLDER/$f
	mkdir db && mkdir app_files
done < $INPUT_FILE
