#!/bin/bash


ListScan()
{
	read $answer
	echo $answer
	if [ "$answer" == "1" ]; then
		
		if [ -a 192.168.1.0-Host.xml ]; then
			mv 192.168.1.0-Host.txt 192.168.1.0-Host.txt.old
			nmap -sP 192.168.1.0/24 | grep -oP '192.{0,10}'  > 192.168.1.0-Hosts.txt
		else
			#nmap -sP 192.168.1.0/24 -oX 192.168.1.0-Host.xml > /dev/null 2>&1
			echo "nmap -sP 192.168.1.0/24" 
		fi
	fi
	if [[ $answer == 2 ]]; then
		if [ -a 192.168.2.0-Host.xml ]; then
			mv 192.168.2.0-Host.txt 192.168.2.0-Host.txt.old
			nmap -sP 192.168.2.0/24 | grep -oP '192.{0,10}' > 192.168.2.0-Host.txt
		else
			nmap -sP 192.168.2.0/24 | grep -oP '192.{0,10}' > 192.168.2.0-Host.txt
		fi
	fi
	if [[ $answer == 2 ]]; then
		if [ -a 30.0.1.0-Host.xml ]; then
			mv 30.0.1.0-Host.xml 30.0.1.0-Host.xml.old
			nmap  -sP 30.0.1.0/26 | grep -oP '30.{0}.{1}.{0,10}' > 30.0.1.0-Host.txt
		else
			nmap  -sP 30.0.1.0/26 | grep -oP '30.{0}.{1}.{0,10}' > 30.0.1.0-Host.txt
		fi
	fi
}

 
echo "Which network would you like to run?
1) 192.168.1.0
2) 192.168.2.0
3) 30.0.1.0
	"
#if [ $answer == 1 ]; then
#	echo "Answer == 1"
#fi

ListScan
