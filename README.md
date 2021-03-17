# iot-device-public


## Quick start
To install, execute:

```bash
bash <(curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/main/install.sh)
```
First password is package password (secret)
Second password is because sudo is requiredt to configure the device and dependencies


## Step by step

```bash
cd
mkdir run
cd run

curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/main/install.exz --output install.exz

openssl aes-256-cbc -d \
    -in install.exz \
    -out install.txz \
    -md sha1 -salt -iter 5
```

Input password when prompt, then execute

```bash
tar Jxvf install.exz
```

To finish, run:

```bash
./install.sh
./updater.sh
```

You will have all installed and updated.