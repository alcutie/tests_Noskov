#!/bin/bash
folder1=test_pic1
folder2=test_pic2

chmod +x script.sh
mkdir $folder2
./script.sh $folder1 $folder2 > /dev/null

pic=`ls $folder2 | wc -l`
rm -rf $folder2

if [[ $pic -eq 3 ]]
then
    echo "Тест пройден!"
    exit 0
else
    echo "Тест провален!"
    exit 1
fi