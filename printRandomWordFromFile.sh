#!/bin/bash

fileNameThatContainsTheWords=~/wordList.txt
echo "file that contains the words is: "$fileNameThatContainsTheWords
wordsCountInTheFile=$(wc -w < $fileNameThatContainsTheWords)
echo $wordsCountInTheFile
randomWord=$(($RANDOM % $wordsCountInTheFile))
echo "index of the word to be printed " $randomWord
word=$(sed -n "${randomWord}p" $fileNameThatContainsTheWords)
echo $word
