# Image for Raspberry PI home server

To install run command:
```
wget -O - https://raw.githubusercontent.com/jayantak/rpi-home/main/01-ssh.sh | bash -p {port}
wget -O - https://raw.githubusercontent.com/jayantak/rpi-home/main/install.sh | bash
```

```
ssh -p ${port} ${user}@${ip}
```

Requirements:
- Raspberry Pi OS 32-bit – port of Debian Bullseye with the Raspberry Pi Desktop

