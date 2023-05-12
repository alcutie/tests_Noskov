#!/bin/bash
folder1=test_pic1
folder2=test_pic2

chmod +x script.sh
./script.sh $folder1 $folder2 > /dev/null

pic=`ls $folder2 | wc -l`

for ((i=1; i<=pic; i++))
do
    rm $folder2/file_$i.png
done

if [[ $pic -eq 3 ]]
then
    echo "Тест пройден!"
    exit 0
else
    echo "Тест провален!"
    exit 1
fi