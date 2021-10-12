# iot-device-public


## Quick start

To install, execute:

```bash
bash <(curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/main/deploy.sh)
```

## Step by step

The only way to do test is in step by step, so for test environment please, execute especific commands

```bash
cd
mkdir -p "$HOME/run"
cd "$HOME/run"
```

> **Production**
```bash
curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/main/install.exz --output install.exz
```

> **Test**
```bash
curl -s https://raw.githubusercontent.com/yacomelian/iot-device-public/devel/install.exz --output install.exz
```

Decipher

```bash
openssl aes-256-cbc -d \
    -in install.exz \
    -out install.txz \
    -md sha512 -salt -iter 5
```

Input password when prompt, then execute

```bash
tar Jxvf install.txz
rm install.txz install.exz
```


> **Test**
```bash
sed -i "s#/main/#/devel/#" updater.sh
```

To finish, run:
```bash
./install.sh
./updater.sh
rm dist.txz
```


You will have all installed, updated and running!