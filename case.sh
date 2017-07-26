#!/bin/bash

case $1 in
	start)
		echo start
	;;
	stop)
		echo stopping
	;;
	restart)
		echo restarting
	;;
	[0-9])
		echo $1
	;;
	*)
		echo no Idea what to do
	;;
esac
