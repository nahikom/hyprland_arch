# Hyprland с Arch
iwctl
station wlan0 connect ""
В арчинстал добавляем обязательные пакеты: git, pipewire-jack, hyprpaper, waybar, neovim, firefox.
Далее включаем multilib в /etc/pacman.conf и скачиваем yay:
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
Проверяем систему на обновления: 
sudo pacman -Syu
Скачиваем драйвера:
sudo pacman -S --needed mesa lib32-mesa vulkan-intel lib32-vulkan-intel
Скачиваем необходимые зависимости:
sudo pacman -S wine winetricks nodejs npm python python-pip gcc curl ripgrep fd fzf lazygit xsel jre17-openjdk otf-firamono-nerd ttf-firacode-nerd
Скачиваем приложения:
sudo pacman -S thunar file-roller nwg-look fish fisher blueman telegram-desktop swaync rofi  
