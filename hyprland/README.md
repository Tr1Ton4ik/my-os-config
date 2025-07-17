## Конфиг [hyprland](https://hypr.land/)

>#### Что установить:
>[kitty](https://github.com/kovidgoyal/kitty?tab=readme-ov-file) - терминал 
>
>[pamixer](https://github.com/cdemoulins/pamixer) - управление громкостью
>
>[hyprshot](https://github.com/Gustash/Hyprshot) - утилита скришотов
>
>[waybar](https://github.com/Alexays/Waybar) - панель управления([тут её конфиг](https://github.com/Tr1Ton4ik/my-os-config/tree/main/waybar))

Установка на arch: 

```
sudo pacman -S hyprland kitty pamixer hyprshot waybar
```

Установка зависимостей для waybar на arch: ```kitty htop pulseaudio xfce4-taskmanager NetworkManager```; ```yay  -S cpupower-gui```