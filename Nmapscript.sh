#!/bin/bash


ListScan()
{
	if [ -a 192.168.1.0-Host.xml ]; then
		mv 192.168.1.0-Host.xml 192.168.1.0-Host.xml.old
		nmap -sP 192.168.1.0/24 -oX 192.168.1.0-Host.xml > /dev/null 2>&1
		nmap -sP 192.168.2.0/24 -oX 192.168.2.0-Host.xml > /dev/null 2>&1
		nmap -sP 30.0.1.0/26 -oX 30.0.1.0-Host.xml > /dev/null 2>&1

	else
		nmap -sP 192.168.1.0/24 -oX 192.168.1.0-Host.xml > /dev/null 2>&1
		nmap -sP 192.168.2.0/24 -oX 192.168.2.0-Host.xml > /dev/null 2>&1
		nmap -sP 30.0.1.0/26 -oX 30.0.1.0-Host.xml > /dev/null 2>&1
	fi
}


PickScan()

{
	x = ' '
	while  [$x == 'yes'];
	do 
		echo "Which network would you like to run?
1) 192.168.1.0
2) 192.168.2.0
3) 30.0.1.0
	"
		read answer
		echo "Do you want to run another scan?"
		read x
		echo $x 	
	done

	
}

PickScan
