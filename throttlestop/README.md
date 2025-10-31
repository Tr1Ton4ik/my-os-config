## Это файлы для разгона процессора слабых пк

+ В throttlestop.sh содержится код для разгона
+ В throttlestop.service находится сервис, который позволяет автоматически применять скрипт при запуске компьютера

Что нужно установить: [cpupower](https://archlinux.org/packages/?name=cpupower), [msr-tools](https://archlinux.org/packages/?q=msr-tools)

Установка на arch: 
```
sudo pacman -S msr-tools cpupower
```

### Применение throttlestop.sh: ```sudo sh throttlestop.sh```

### Подключение throttlestop.service для автоматического разгона:
1) Создайте скрипт:
```
sudo nano /usr/local/bin/cpu-setup.sh
```
2) Добавьте содержимое:
```#!/bin/bash
modprobe msr
wrmsr 0x1FC 2359388
cpupower frequency-set --min 3100MHz
cpupower frequency-set --max 3100MHz
cpupower frequency-set --governor performance
```
3) Дайте права на выполнение:
```
sudo chmod +x /usr/local/bin/cpu-setup.sh
```
4) Создайте systemd сервис:
```
sudo nano /etc/systemd/system/cpu-setup.service
```
5) Добавьте содержимое:
```
[Unit]
Description=CPU Frequency Setup
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/cpu-setup.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
6) Включите сервис:
```
sudo systemctl enable cpu-setup.service
sudo systemctl start cpu-setup.service
```