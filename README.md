# Hyprland с Arch
## Перед самой установкой
```bash
iwctl
station wlan0 connect ""
```

В арчинстал добавляем обязательные пакеты: git, pipewire-jack, hyprpaper, waybar, neovim, firefox.

## После установки
Включаем интернет:
```bash
nmcli device wifi connect "" password ""
```
Далее включаем multilib в /etc/pacman.conf и скачиваем yay:
```bash
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
Проверяем систему на обновления: 
```bash
sudo pacman -Syu
```
Скачиваем драйвера:
```bash
sudo pacman -S --needed mesa lib32-mesa vulkan-intel lib32-vulkan-intel
```
Скачиваем необходимые зависимости:
```bash
sudo pacman -S wine winetricks nodejs npm python python-pip gcc curl ripgrep fd fzf lazygit xsel jre17-openjdk otf-firamono-nerd ttf-firacode-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji polkit-kde-agent wl-clipboard brightnessctl playerctl
```
Скачиваем приложения:
```bash
sudo pacman -S thunar file-roller thunar-archive-plugin thunar-volman nwg-look fish fisher blueman telegram-desktop swaync rofi 
```
Включаем службы pipewire для автозапуска:
```bash
systemctl --user enable wireplumber pipewire pipewire-pulse
```
Меняем оболочку на fish:
```bash
chsh -s $(which fish)
```
### Настройка окружения и кастомизация

#### Установка LazyVim:
```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
nvim
```
В /usr/share/applications/nvim.desktop исправить: 
```bash
Exec=kitty nvim %F
Terminal=false
```
#### Tide для fish:
```bash
fisher install IlanCosman/tide@v6
```
В конфиге ~/.config/fish/config.fish добавить в конец:
```bash
set -U fish_greeting
set tide_character_icon "~>"
```
