# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alejandro/.zshrc'
autoload -U compinit; compinit
# End of lines added by compinstall
#


#Aliases
alias ll="ls --group-directories-first --color=auto -ltah"
alias ls="ls --group-directories-first --color=auto -ltah"

#Para configurar dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## Dar color a grep y a otros, util para logs
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#puertos abiertos
alias ports='netstat -tulanp'

#para que wget continue automaticamente las descargas
alias wget='wget -c'

export LC_ALL=es_CL.UTF-8

#Para iniciar startx al iniciar
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi

#Para eliminar error de tecla supr
bindkey "^[[3~" delete-char
export PATH=/home/alejandro/.local/bin:$PATH

function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}


function install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
        if [ "$s" = "powerline_precmd" ]; then
            return
        fi
    done
    precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi


#Para cargar ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

ENABLE_CORRECTION="true"
