#!/bin/sh


# Script de apagado para rofi 
reload_bspwm="bspc wm -r"
reload_sxhkd="pkill -USR1 -x sxhkd"
reb="reboot"
shut="poweroff"
logout="killall panel;bspc quit"

cmds="\
       Bloquear	slock
       Cerrar Sesion	${logout}
     Recargar BSPwm	${reload_bspwm}
     Recargar Sxhkd	 ${reload_sxhkd}
       Reiniciar PC	${reb}
       Apagar PC	${shut}"

choice="$(echo "$cmds" | cut -d'	' -f 1 | rofi -p "  $USER " -dmenu -lines 6 -width 16)" || exit 1

action=$(echo "$cmds" | grep "^$choice	" | cut -d '	' -f2)

IFS=';' read -ra com <<< "$action"

for i in "${com[@]}"
do
$i
done
