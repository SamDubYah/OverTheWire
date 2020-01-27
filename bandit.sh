#!/bin/bash

banditLevel = 0
echo "What level do you want to start on? (Default = 0) "
read banditLevel

for ((level = banditLevel; Level <= 34; Level++));do
	
	#start connection to bandit level
	echo "Connect to Bandit $level"
	ssh bandit$level@bandit.labs.overthewire.org -p 2220	

	echo "Do you want to Connect to the next level? (y/n) "
	
	# check for valid input
	while [	1 ]
	do
		read continueBandit
		
		if [ "$continueBandit" = "n" ] || [ "$continueBandit" = "N" ]
		then
			exit
		elif [ "$continueBandit" = "y" ] || [ "$continueBandit" = "Y" ]
		then
			break
		else 
			echo "[!] Invalid User input entered, Try again: " 
		fi
	done
done
