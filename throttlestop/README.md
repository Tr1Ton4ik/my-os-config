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
1) Создай файл: 
```
sudo nano /etc/systemd/system/throttlestop.service
``` 

2) Cкопируй содержимое из **throttlestop.service**, который находится в этом репозитории

3) Создай throttlestop как команду: 
```
sudo nano /usr/local/bin/throttlestop
``` 
и скопируй в него содержимое **throttlestop.sh**

4) Поменяй права команды throttlestop на выполнение: 
```
sudo chmod +x /usr/local/bin/throttlestop
```

5) Включить и запустить сервис: 
```
sudo systemctl start/enable throttlestop.service
```