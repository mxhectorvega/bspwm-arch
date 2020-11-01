# DOTFILES
Configuraciones personales

BSPwm con Lemonbar personalizados e integrados con Dmenu y un par de scripts que facilitan el uso diario, sin sacrificar el rendimiento.

<img src="https://raw.githubusercontent.com/mxhectorvega/mxhectorvega.github.io/master/archivos/screen3.png" />

<img src="https://raw.githubusercontent.com/mxhectorvega/mxhectorvega.github.io/master/archivos/screen2.png" />

<img src="https://raw.githubusercontent.com/mxhectorvega/mxhectorvega.github.io/master/archivos/screen1.png" />

**Instalacion**

Clonar e instalar los repositorios `make && sudo make install` a travez de la terminal.

```
git clone https://github.com/baskerville/bspwm
git clone https://github.com/baskerville/sxhkd
git clone https://github.com/baskerville/xdo
git clone https://github.com/baskerville/sutils
git clone https://github.com/baskerville/xtitle
git clone https://github.com/mxhectorvega/dmenu
git clone https://github.com/mxhectorvega/tabbed
git clone https://github.com/mxhectorvega/surf
git clone https://github.com/mxhectorvega/st
git clone https://github.com/krypt-n/bar
```
**Configuracion**

Clonar y copiar los archivos de configuracion:

```
git clone https://github.com/mxhectorvega/dotfiles

cp -R ~/dotfiles/.config/* ~/.config
```

Otorgar permisos de ejecucion a los archivos:

```
chmod -R +x ~/.config/{bspwm,lemonbar,ranger}
```

En caso de no tener pantalla de inicio de sesion, agregar `exec bspwm` al
archivo **~/.xinitrc, .xprofile o start.sh** (si no cuenta con el archivo, cree uno nuevo y asigne
permisos de ejecucion con `chmod +x`).

**Dependencias**

```
sudo pacman -S gvfs devmon devilspie xcompmgr ueberzug youtube-dl ffmpegthumbnailer gst-plugins-good gst-libav feh mpd mpc ncmpcpp slock firefox telegram-desktop htop xarchiver neofetch leafpad ranger pcmanfm lxappearance dunst maim xclip sxiv xdotool calcurse zathura zathura-pdf-mupdf neovim mpv screenkey

yay -S transset-df

```

**Fuentes y temas**

```
yay -S otf-sfmono nerd-fonts-mononoki ttf-joypixel sotf-font-awesome-5-free awesome-terminal-fonts ttf-menlo-powerline-git otf-san-francisco-compact nerd-fonts-sf-mono materia-gtk-theme materia-kde papirus-icon-theme
```

**Bordes de ventanas redondeados (opcional)**

```
picom-ibhagwan-git
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
