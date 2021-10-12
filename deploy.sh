#!/bin/bash

read -s -p "Input the package password: " PASSWORD

cd
if [ ! -d "$HOME/run" ]; then
    mkdir -p "$HOME/run"
fi
cd "$HOME/run"

curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/main/install.exz --output install.exz

openssl aes-256-cbc -d \
    -in install.exz \
    -out install.txz \
    -md sha512 -salt -iter 5 \
    -pass "pass:${PASSWORD}"

if [ $? -eq 0 ]; then
    tar -Jxvf install.txz
    ./install.sh
    ./updater.sh
    rm install.exz install.txz dist.txz 2> /dev/null
else
    echo "ERROR: Posiblemente password incorrecta"
    rm install.exz 2> /dev/null
fi
