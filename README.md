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
sudo pacman -S --needed wine winetricks nodejs npm python python-pip gcc curl ripgrep fd fzf lazygit xsel jre17-openjdk otf-firamono-nerd ttf-firacode-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji wl-clipboard brightnessctl playerctl gtk-engine-murrine network-manager-applet os-prober
```
Скачиваем приложения:
```bash
sudo pacman -S --needed thunar file-roller thunar-archive-plugin thunar-volman nwg-look fish fisher blueman telegram-desktop swaync rofi 
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
sudo ln -sf /usr/bin/nvim /usr/bin/vi
```
В /usr/share/applications/nvim.desktop исправить: 
```bash
Exec=kitty nvim %F
Terminal=false
```
В Thunar: Edit -> Configure custom actions -> +
```bash
Open with suoedit
Edit with root rights via sudoedit
kitty -e sudoedit %F
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
#### Меняем тему Firefox
```bash
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme/
./tweaks.sh -f flat
```
#### Устанавливаем тему и иконки
```bash
yay -S tokyonight-gtk-theme-git
```
#### Устанавливаем тему SDDM
```bash
git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM && cd SilentSDDM && ./install.sh
cd
sudoedit /usr/share/sddm/themes/silent/metadata.desktop
```
ConfigFile=configs/rei.conf
```bash
cd /usr/share/sddm/themes/silent/ && change_avatar.sh user /path/to/image
```
#### Замена Windows Boot Manager на GRUB
```bash
sudo nvim /etc/default/grub
```
Раскомментировать GRUB_DISABLE_OS_PROBER=false
```bash
sudo os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
#### Устанавливаем тему GRUB
```bash
git clone https://github.com/vinceliuice/grub2-themes
cd grub2-themes
sudo ./install.sh -t whitesur -s 1080p -i white
```
