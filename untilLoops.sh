#!/bin/bash
#the difference between until and while:
#while : execute the commands within it as long as the condition is true , once it becomes false, stop execution and break
#until : executes the commands within it as long as the condition is false, once it becomes true, stop execution and break

counter=1
until [ $counter -gt 10 ]
do
	echo $counter
	counter=$(($counter+1))
done

echo its all done now

