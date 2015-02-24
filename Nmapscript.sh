#!/bin/bash


ListScan()
{
	if [ $answer == 1 ]; then
		if [ -a 192.168.1.0-Hosts.xml ]; then
			mv 192.168.1.0-Hosts.xml 192.168.1.0-Hosts.xml.old
			nmap -sP 192.168.1.0/24 -oX 192.168.1.0-Hosts.xml > /dev/null 2>&1
			echo "Difference in Hosts from the last time: "
			ndiff 192.168.1.0-Hosts.xml 192.168.1.0-Hosts.xml.old 
		else
			nmap -sP 192.168.1.0/24 -oX 192.168.1.0-Hosts.xml > /dev/null 2>&1
		fi
	fi
	if [ $answer == 2 ]; then
		if [ -a 192.168.2.0-Hosts.xml ]; then
			mv 192.168.2.0-Hosts.xml 192.168.2.0-Hosts.xml.old
			nmap -sP 192.168.2.0/24 -oX 192.168.2.0-Hosts.xml > /dev/null 2>&1
			echo "Difference in Hosts from the last time: "
			ndiff 192.168.2.0-Hosts.xml 192.168.2.0-Hosts.xml.old 
		else
			nmap -sP 192.168.2.0/24 -oX 192.168.2.0-Hosts.xml > /dev/null 2>&1
		fi
	fi
	if [ $answer == 3 ]; then
		if [ -a 30.0.1.0-Hosts.xml ]; then
			mv 30.0.1.0-Hosts.xml 30.0.1.0-Hosts.xml.old
			nmap -sP 30.0.1.0/26 -oX 30.0.1.0-Hosts.xml > /dev/null 2>&1
			echo "Difference in Hosts from the last time: "
			ndiff 30.0.1.0-Hosts.xml 30.0.1.0-Hosts.xml.old 
		else
			nmap -sP 30.0.1.0/26 -oX 30.0.1.0-Hosts.xml > /dev/null 2>&1
		fi
	fi
}

OptionScan()
{
	if [ $Option == 1 ]; then
		Option="-O"
	elif [ $Option == 2 ]; then
		Option="-sV"
	fi
	if [ $answer == 1 ];then
		cat 192.168.1.0-Hosts.xml | grep -oP '192.{0,10}'  > 192.168.1.0-Hosts.txt
		echo "Running $Option scan on 192.168.1.0/24"
		if [ -a 192.168.1.0-Option.xml ]; then
			mv 192.168.1.0-Option.xml 192.168.1.0-Option.xml.old
			nmap $Option -iL 192.168.1.0-Hosts.txt -oX 192.168.1.0-Option.xml > /dev/null 2>&1
			echo "Scan completed scan file created"	
			echo "Converting file to HTML"
			xsltproc 30.0.1.0-Option.xml -O 30.0.1.0-Option.html		
			echo "Difference in scan from last time: "
			ndiff 192.168.1.0-Option.xml 192.168.1.0-Option.xml.old
		else
			nmap $Option -iL 192.168.1.0-Hosts.txt -oX 192.168.1.0-Option.xml
		fi
	fi
	if [ $answer == 2 ];then
		cat 192.168.2.0-Hosts.xml | grep -oP '192.{0,10}'  > 192.168.2.0-Hosts.txt
		echo "Running $Option scan on 192.168.2.0/24"
		if [ -a 192.168.2.0-Option.xml ]; then
			mv 192.168.2.0-Option.xml 192.168.2.0-Option.xml.old
			nmap $Option -iL 192.168.2.0-Hosts.txt -oX 192.168.2.0-Option.xml > /dev/null 2>&1
			echo "Scan completed scan file created"
			echo "Converting file to HTML"
			xsltproc 30.0.1.0-Option.xml -O 30.0.1.0-Option.html
			echo "Difference in scan from last time: "
			ndiff 192.168.2.0-Option.xml 192.168.2.0-Option.xml.old > ndiff-192.168.2.0.txt
		else
			nmap $Option -iL 192.168.2.0-Hosts.txt -oX 192.168.2.0-Option.xml
		fi
	fi
	if [ $answer == 3 ];then
	cat 30.0.1.0-Hosts.xml | grep -oP '30.0.1.{0,10}'  > 30.0.1.0-Hosts.txt
	echo "Running $Option scan on 30.0.1.0/26"
		if [ -a 30.0.1.0-Option.xml ]; then
			mv 30.0.1.0-Option.xml 30.0.1.0-Option.xml.old
			nmap $Option -iL 30.0.1.0-Hosts.txt -oX 30.0.1.0-Option.xml > /dev/null 2>&1
			echo "Scan completed scan file created"
			echo "Converting file to HTML"
			xsltproc 30.0.1.0-Option.xml -O 30.0.1.0-Option.html
			echo "Difference in scan from last time: "
			ndiff 30.0.1.0-Option.xml 30.0.1.0-Option.xml.old > ndiff-30.0.1.0.txt
		else
			nmap $Option -iL 30.0.1.0-Hosts.txt -oX 30.0.1.0-Option.xml
		fi
	fi
}			


echo -e "Which network would you like to run?
1) 192.168.1.0
2) 192.168.2.0
3) 30.0.1.0
Selection: \c"
read answer
echo -e "Which options would you like to use?
1) OS Scan (-O)
2) Version Detection Scan (-sV)
3) Other (Please enter command line argument only e.g -A, -v, etc)
Selection: \c"
read Option

ListScan
OptionScan
