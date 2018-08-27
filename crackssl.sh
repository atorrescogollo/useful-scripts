#!/bin/bash

RED='\033[1;31m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color


if [ $# -ne 2 ]; then
	printf " - ${RED}Crackssl${NC}: bruteforce aes-256-cbc with openssl\n"
	echo "Usage: $0 <wordlist> <enc_file>"
	exit

fi

LOG_FOLDER="crackssl_logs"
mkdir -p $LOG_FOLDER

while IFS='' read -r line || [[ -n "$line" ]]; do
	#echo "Text read from file: $line"
	openssl aes-256-cbc -d -a -in $2 -k $line 2>&1 > /dev/null| grep 'error' &> /dev/null
	if [ $? != 0 ]; then
		printf "Matched: ${BLUE}$line${NC}\n"
		openssl aes-256-cbc -d -a -in $2 -k $line -out $LOG_FOLDER/$line.log
	fi
done < "$1"
