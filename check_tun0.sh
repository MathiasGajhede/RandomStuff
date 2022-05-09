#!/bin/bash

if [ "`ifconfig | grep tun0`" != "" ] ; 
then 
	echo yes; 
else 
	/startup/run.sh &> /startup/feedback.txt &
	cd /startup/
	./firewall-rules.sh &> /startup/firewall-rules.sh &
	echo no; 
fi
