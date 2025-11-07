#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# ----------------------------------
# ~/.bashrc yusa shell
# ----------------------------------

[[ $- != *i* ]] && return

eval "$(starship init bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

export EDITOR=$(which vim)
export SYSTEM_EDITOR=$EDITOR
export VISUAL=$EDITOR
export PATH="$HOME/.config/yusa:$PATH"

fastfetch

if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    . "$HOME/.cache/wal/colors.sh"
fi

echo
