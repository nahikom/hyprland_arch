# Hyprland с Arch
## Перед самой установкой
iwctl

station wlan0 connect ""

В арчинстал добавляем обязательные пакеты: git, pipewire-jack, hyprpaper, waybar, neovim, firefox.

## После установки
Включаем интернет:

nmcli device wifi connect "" password ""

Далее включаем multilib в /etc/pacman.conf и скачиваем yay:

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

Проверяем систему на обновления: 

sudo pacman -Syu

Скачиваем драйвера:

sudo pacman -S --needed mesa lib32-mesa vulkan-intel lib32-vulkan-intel

Скачиваем необходимые зависимости:

sudo pacman -S wine winetricks nodejs npm python python-pip gcc curl ripgrep fd fzf lazygit xsel jre17-openjdk otf-firamono-nerd ttf-firacode-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji polkit-kde-agent wl-clipboard brightnessctl playerctl

Скачиваем приложения:

sudo pacman -S thunar file-roller thunar-archive-plugin thunar-volman nwg-look fish fisher blueman telegram-desktop swaync rofi 

Включаем службы pipewire для автозапуска:

systemctl --user enable wireplumber pipewire pipewire-pulse

Меняем оболочку на fish:

chsh -s $(which fish)

### Настройка окружения и кастомизация
Tide для fish:
fisher install IlanCosman/tide@v6
