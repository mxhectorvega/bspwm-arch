# Load profile
[ -f ~/.profile ] && source ~/.profile


# Enable colors
autoload -Uz colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# Setup history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory


# Basic aut/tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


# Aliases
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

alias df='df -h'
alias du='du -h'
alias free='free -h'
alias more='less'

alias cd..='cd ..'
alias ls='ls --color=auto'
alias ll='ls -AFlh'
alias la='ls -AF'

alias bc="BC_ENV_ARGS=<(echo 'scale=6') \bc -q"

alias sctl='systemctl'
alias ssctl='sudo systemctl'
alias jctl='journalctl'
alias sjctl='sudo journalctl'

alias yt-dl='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" -o "%(title)s.%(ext)s"'
alias yt-dl-a='youtube-dl -f "bestaudio[ext=m4a]" --add-metadata -o "%(title)s.%(ext)s"'
alias yt-dl-pl='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" -o "%(playlist_index)s. %(title)s.%(ext)s"'
alias yt-dl-pl-a='youtube-dl -f "bestaudio[ext=m4a]" --add-metadata -o "%(playlist_index)s. %(title)s.%(ext)s"'

alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'


# Functions
function ex() {
    [ $# -eq 0 ] && echo "no files provided" && return 2

    for v in "$@"; do
        if [ -f "$v" ]; then
            case "$v" in
                *.tar.bz2)   tar xjf "$v"   ;;
                *.tar.gz)    tar xzf "$v"   ;;
                *.tar.xz)    tar xJf "$v"   ;;
                *.bz2)       bunzip2 "$v"   ;;
                *.rar)       unrar x "$v"   ;;
                *.gz)        gunzip "$v"    ;;
                *.tar)       tar xf "$v"    ;;
                *.tbz2)      tar xjf "$v"   ;;
                *.tgz)       tar xzf "$v"   ;;
                *.zip)       unzip "$v"     ;;
                *.Z)         uncompress "$v";;
                *.7z)        7z x "$v"      ;;
                *)           echo "'$v' cannot be extracted via ex()" ;;
            esac
        else
            echo "'$v' is not a valid file"
        fi
    done
}

function corona() {
    curl -s 'https://corona-stats.online/lt?minimal=true' | head -3
}

function sewiti() {
    case $1 in
        update)
            mv -f ~/.zshrc ~/.zshrc.old
            mv -f ~/.p10k.zsh ~/.p10k.zsh.old
            curl 'https://raw.githubusercontent.com/sewiti/linux-config/main/.zshrc' -o ~/.zshrc
            curl 'https://raw.githubusercontent.com/sewiti/linux-config/main/.p10k.zsh' -o ~/.p10k.zsh
            source ~/.zshrc
            ;;

        *)
            echo "usage: sewiti COMMAND"
            echo ""
            echo "List of Commands:"
            echo "  update        update sewiti config files (suffixes old configs with .old)"
            echo "  help          this message"
            ;;
    esac
}


# Keybinds
bindkey '^ ' autosuggest-accept
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^H' backward-kill-word
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line


# Load .zshrc.local
[ -f ~/.zshrc.local ] && source ~/.zshrc.local


# Load plugins
[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh || \
{ [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

# Syntax highlighting has to be at the end
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh || \
{ [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh }
