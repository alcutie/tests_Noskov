#!/bin/bash
if [[ ! -n $1 || ! -n $2 ]]
then
    echo "Переданы не все аргументы"
    exit 1
elif [[ ! -d $1 || ! -d $2 ]]
then
    echo "Какой-то из папок ($1, $2) не существует"
    exit 1
fi

amount=0

for file in `ls $1`
{
    last_word=0
    for word in `cat $1/$file`
    {
        if [[ "$word" = "dog"  && "$last_word" = "pasha" ]]; then
            amount=$(($amount+1))
        fi
        last_word=$word
    }
}

for ((i=1;i<=$amount;i++))
{
    echo "* СОБАКА - это НЕ кошка!!!"
    curl -s https://cataas.com/cat/ -o ./$2/file_$i.png > /dev/null
}

echo "Паша повторил название команды $amount раз(а)"
