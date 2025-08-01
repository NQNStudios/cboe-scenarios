#! /opt/local/bin/bash

# This script was used to help unzip every zip file in The Lurker's archive.

unzip_folder() {
	zip_files=("${1}"/*.zip)
	for file in "${zip_files[@]}"; do
		echo "Unzipping $file"
		unzip "$file" -d "${1}"
		rm "$file"
	done
}

folders=(BoEArchFull/Normal/**)
for folder in "${folders[@]}"; do
	unzip_folder "$folder"
done

folders=(BoEArchFull/Other/**)
for folder in "${folders[@]}"; do
	unzip_folder "$folder"
done

folders=(BoEArchFull/Series/**/**)
for folder in "${folders[@]}"; do
	unzip_folder "$folder"
done

folders=(BoEArchFull/Utility/**/**)
for folder in "${folders[@]}"; do
	unzip_folder "$folder"
done