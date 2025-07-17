## Это файл для полного обновления ubuntu

### Создание
Ты можешь сделать это как shell скрипт, или команду, которую можно будет запустить из любой директории

#### Shell скрипт
1) Создаешь файл fullupgrade(либо **любое_твое_название.sh**): 
```
nano fullupgrade.sh
```

2) Копируешь содерджимое fullupgrade из директории этого репозитория в свой fullupgrade

3) Запускаешь его: 
```
sh ./путь_к_твоему_fullupgrade/fullupgrade.sh
```

#### Команда
1) Создай fullupgrade как команду: 
```
sudo nano /usr/local/bin/fullupgrade
``` 
и скопируй в него содержимое **fullupgarde** из этого репозитория

2) Поменяй права команды fullupgrade на выполнение: 
```
sudo chmod +x /usr/local/bin/fullupgrade
```

3) Теперь просто запусти: 
```
fullupgrade
```