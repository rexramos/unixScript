#!/bin/bash
#Author: Rex Ramos

#output line in variable
var1="+++++++++++++"
#create logFile.txt in home directory and store the full path into a variable
FILE_DIR="/home/$USER/logFile.txt"

echo $var1 &>> $FILE_DIR
echo "script will output the current date and time" &>> $FILE_DIR
date &>> $FILE_DIR
echo ""&>> $FILE_DIR

echo $var1 &>> $FILE_DIR
echo "script will output current user running the script" &>> $FILE_DIR
whoami &>> $FILE_DIR
echo ""&>> $FILE_DIR

echo $var1 &>> $FILE_DIR
echo "script will output current directory" &>> $FILE_DIR
pwd &>> $FILE_DIR
echo ""&>> $FILE_DIR

echo $var1 &>> $FILE_DIR
echo "script will output a count of all currently running processes" &>> $FILE_DIR
ps -ef | wc -l &>> $FILE_DIR
echo "end of script" &>> $FILE_DIR

