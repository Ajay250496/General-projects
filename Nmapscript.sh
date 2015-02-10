#!/bin/bash


ListScan()
{
	if [ -a 192.168.1.0-Host.xml ]; then
		mv 192.168.1.0-Host.xml 192.168.1.0-Host.xml.old
		nmap -sP 192.168.1.0 -oX 192.168.1.0-Host.xml > /dev/null 2>&1

	else
		nmap -sP 192.168.1.0 -oX 192.168.1.0-Host.xml > /dev/null 2>&1
		cat 192.168.1.0-Host.xml
	fi
}



ListScan
