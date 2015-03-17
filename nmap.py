#!/usr/bin/python

import os
import nmap
import sys

nm = nmap.PortScanner()

if len(sys.argv) > 1:
    print "lol greater than one"
