## Тут находится конфиг zsh 
Для него требуюся:
1) zsh(есть в репозиториях многих дистрибутивов) на arch: 
```
sudo pacman -S zsh
```
2) [oh-my-zsh](https://ohmyz.sh/) 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
3) тема [powerlevel10k](https://github.com/romkatv/powerlevel10k)-слишком много писать по ссылке есть иструкция
4) плагин [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) 
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
5) плагин [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) 
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Добаление плагинов
Измени переменную плагинов после ее у установки в .zshrc: plugins=(плагин1 плагин2 плагинN), таким образом у меня это plugins=(git zsh-autosuggestions zsh-syntax-highlighting
)