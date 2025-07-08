Это файлы для разгона процессора слабых пк

В throttlestop.sh содержится код для разгона
В throttlestop.service находится сервис, который позволяет автоматически применять скрипт при запуске компьютера

Что нужно установить: cpupower, msr-tools

Применение throttlestop.sh
sudo sh throttlestop.sh

Подключение throttlestop.service:
1) Создай файл: sudo nano /usr/etc/systemd/throttlestop.service
2) Cкопируй содержимое
3) создай throttlestop как команду: sudo nano /usr/local/bin/throttlestop и скопируй в него содержимое throttlestop.sh
4) поменяй права команды throttlestop на выполнение:
sudo chmod +x /usr/local/bin/throttlestop
5) включить и запустить сервис:
sudo systemctl start/enable throttlestop.service