#!/bin/bash

#$Revision:001$
#$Write_down_the_date_of_the_creation$

#Variablese

#Path of the directory at where those files resides
BASE_PATH=/home/imv27/Desktop/LargerFiles

#How old files should be
AGE_OF_FILE=1

#Depth for the find commmand
DEPTH=1

#Check if the directory is exists or not
if [ ! -d $BASE_PATH ]
then 
	echo "Directory does not exist : $BASE_PATH"
	exit 1
fi

#Create 'archive' folder if not present 
if [ ! -d $BASE_PATH/archive ]
then 
	mkdir $BASE_PATH/archive
fi

#Find the list of files larger than 500kb
#We can add one more argument with find command
#To filter out the files older than specified days
#With -mtime option

for i in `find $BASE_PATH -maxdepth $DEPTH -type f -size +500k`
do
	
	#Displaing the progress of this activity
	echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ===> $BASE_PATH/archive"


	#compress the file having size more than 500k
	gzip $i || exit 1

	# move this compressed file to archieve folder
	mv $i.gz $BASE_PATH/archive || exit 1
done


