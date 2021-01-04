# DOTFILES ARCH LINUX
Configuraciones personales

BSPwm, polybar, rofi y un par de scripts que facilitan el uso diario, sin sacrificar el rendimiento.

<img src="https://raw.githubusercontent.com/mxhectorvega/dotfilesarchlinux/main/screenshot.png" />


**Importante:**

Puede probar esta configuracion en una Maquina Virtual QEMU, VirtualBox, etc., instalando con mi script de instalacion rapida de ArchLinux, donde solo instala lo basico hasta el servidor X y asi probar sin afectar a su SO ppal.
https://raw.githubusercontent.com/mxhectorvega/installarch/main/qemuxorg

**Instalacion**

Instalar BSPwm, Sxhkd y Rofi (para que funcione rofi con los temas debe instalar pywal desde pip3 `pip3 install pywal`).

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

cp -R ~/dotfilesarchlinux/.config/* ~/.config
cp -R ~/dotfilesarchlinux/.local/* ~/.local

chmod + x ~/.config/bspwm/*
chmod + x ~/.local/bin*
```

En caso de no tener pantalla de inicio de sesion, agregar en la linea 1: `sxhkd &` y en la linea 2: `exec bspwm` al
archivo **~/.xinitrc, .xprofile o zprofile** (si no cuenta con el archivo, cree uno nuevo y asigne
permisos de ejecucion con `chmod +x`).

**Dependencias**

```
sudo pacman -S bc tmux imagemagick ueberzug ffmpegthumbnailer feh mpd mpc ncmpcpp slock telegram-desktop htop xarchiver neofetch leafpad ranger pcmanfm lxappearance dunst maim xclip sxiv xdotool calcurse zathura zathura-pdf-mupdf neovim mpv screenkey --noconfirm --needed
```

**Temas**

```
sudo pacman -S materia-gtk-theme materia-kde papirus-icon-theme --noconfirm --needed
```

**Bordes de ventanas redondeados (opcional)**

```
yay -S picom-ibhagwan-git --noconfirm --needed
```

**Cosas que se ven en la terminal**

```
yay -S cava-git cmatrix unimatrix pfetch tty-clock --noconfirm --needed
```

**Software de uso personal (opcional)**

```
sudo pacman -S geany obs-studio libreoffice-fresh-es kdenlive audacity gimp inkscape --noconfirm --needed

yay -S spotify spotify-adblock-linux --noeditmenu --noconfirm --needed
```

**NOTA:**
Los scripts esta en el directorio `.local/bin` donde podra modificarlos o tomar parte del codigo.

**NOTA:**
Para agregar o quitar modulos de polybar, debera modificar la linea 47 de `.config/polybar/config` donde podra modificarlos o tomar parte del codigo.

**Grupo telegram:**
https://t.me/wmesp


**Canal de tips:**
https://t.me/mxhectorvega


**Creditos:**
@mxhectorvega @tenshalito @bourne_again @darch7 @codeassault
