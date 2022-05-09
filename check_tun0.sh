#!/bin/bash

if [ "`ifconfig | grep tun0`" != "" ] ; 
	then 
		echo yes; 
	else 
		echo no; 
	fi
