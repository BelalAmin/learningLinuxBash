#!/bin/bash
#select :  create a simple menu system
names='Belal Mostafa Mohamed Amin Quit'
PS3='select your name'
select name in $names
do
	if [ $name == 'Quit' ]
	then
		break
	fi

	echo Hello $name
done
echo Bye

