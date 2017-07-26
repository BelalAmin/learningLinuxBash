#!/bin/bash

zero=0
if [[ $# -eq $zero ]]
then
	echo you must enter the file as a parameter
elif [ $# -eq 1 ]
then
	if [ -r $1 ] && [ -x $1 ]
	then
		echo your file is both readable and executable
	elif [ -r $1 ]
	then
		echo your file is readable
	elif 	[ -s $1 ]
	then
		echo your file is execuatable
	fi
fi
