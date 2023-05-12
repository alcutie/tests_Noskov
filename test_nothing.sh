#!/bin/bash

chmod +x script.sh
./script.sh > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Тест пройден!"
    exit 0
else
    echo "Тест провален!"
    exit 1
fi

