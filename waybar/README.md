## Конфиг waybar для hyprland

### Что нужно установить: kitty-терминал, htop-панель задач в терминале, pulseaudio-звуковой сервер, cpupower-gui- приложение контроля процессора, xfce4-taskmanager-менеджер задач gui, NetworkManager-нужен для запуска иконки управления wifi nm-applet, waybar- сама панель

На arch: ```sudo pacman -S kitty htop pulseaudio cpupower-gui xfce4-taskmanager NetworkManager waybar```;```yay -S cpupower-gui```

При замене на другие приложения изменить их в **config.jsonc**

### Для применения конфига скопируй файлы в $HOME/.config/waybar ; создай ее, если не было