# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
export PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;57m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;33m\]\h\[$(tput sgr0)\]]-(\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;171m\]\w\[$(tput sgr0)\])\n>> \[$(tput sgr0)\]"

export TERMINAL="kitty"
export EDITOR="nano -l"

alias nano="nano -l"
