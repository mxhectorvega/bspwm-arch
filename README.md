# DOTFILES ARCH LINUX
Configuraciones personales

BSPwm con Lemonbar personalizados e integrados con Dmenu y un par de scripts que facilitan el uso diario, sin sacrificar el rendimiento.

**Instalacion**

Instalar BSPwm, Sxhkd y Rofi (para que funcione rofo con los temas debe instalar pywal desde yay o pip3 `yay wal-git`).

```
sudo pacman -S bspwm sxhkd rofi
```

Instalar polybar.

```
yay -S polybar-git
```

Clonar e instalar el repositorio `make && sudo make install` a travez de la terminal.

```
git clone https://github.com/mxhectorvega/st
```

**Configuracion**

Clonar y copiar los archivos de configuracion:

```
git clone https://github.com/mxhectorvega/dotfilesarchlinux

cp -R ~/dotfilesarchlinux/* ~/
```

En caso de no tener pantalla de inicio de sesion, agregar `exec bspwm` al
archivo **~/.xinitrc, .xprofile o zprofile** (si no cuenta con el archivo, cree uno nuevo y asigne
permisos de ejecucion con `chmod +x`).

**Dependencias**

```
sudo pacman -S devmon ueberzug ffmpegthumbnailer feh mpd mpc ncmpcpp slock telegram-desktop htop xarchiver neofetch leafpad ranger pcmanfm lxappearance dunst maim xclip sxiv xdotool calcurse zathura zathura-pdf-mupdf neovim mpv screenkey

```

**Fuentes y temas**

```
sudo pacman -S materia-gtk-theme materia-kde papirus-icon-theme
```

**Bordes de ventanas redondeados (opcional)**

```
yay -S picom-ibhagwan-git
```

**Drives de Pulseaudio (opcional)**

```
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth alsa-utils alsa-plugins
```

**Software de uso personal (opcional)**

```
sudo pacman -S libreoffice-fresh-es kdenlive audacity gimp inkscape

yay -S spotify spotify-adblock-linux --noeditmenu --noconfirm --needed
```

**Grupo telegram:**

https://t.me/wmesp


**Canal de tips:**

https://t.me/mxhectorvega


**Creditos:**

@mxhectorvega @tenshalito @bourne_again @darch7 @codeassault
