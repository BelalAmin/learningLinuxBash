#!/bin/bash
fileNameThatContainsTheWords=~/wordList.txt
wordsCountInTheFile=$(grep -Ec "^[a-zA-Z]{$1}$" $fileNameThatContainsTheWords)
echo "words count " $wordsCountInTheFile
myWords=$(grep -E "^[a-zA-Z]{$1}$" $fileNameThatContainsTheWords > ./temp.txt)
randomWord=$(($RANDOM%$wordsCountInTheFile+1))
echo "index of the word to be printed " $randomWord
word=$(sed -n "${randomWord}p" ./temp.txt)
echo $word

