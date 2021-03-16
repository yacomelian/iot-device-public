# iot-device-public

To install, execute:

```bash
cd
mkdir run
cd run

curl -s https://github.com/yacomelian/iot-device-public/raw/main/install.exz --output install.exz

openssl aes-256-cbc -d \
    -in install.exz \
    -out install.txz \
    -md sha1 -salt -iter 5
```

Input password when prompt


```bash
tar Jxvf install.exz
```

Then run when

```bash
./install.sh
./updater.sh
```