[![chat-bored](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/chat-B012ED.json&style=?style=for-the-badge&logo=steam)](https://b012ed.github.io/chat.html)

[![YouTube](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/B012ED.json&style=?style=for-the-badge&logo=youtube)](https://www.youtube.com/channel/UCIqT1hHplli4XvJj7ZUEMzA) 

[![Tools-bored](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/B012ED-Tools.json&style=?style=for-the-badge&logo=appveyor)](https://www.studypool.com/notebank/search?notebank_qs=b012ed&notebank_qs_university=)


nano ~/.bashrc



  GNU nano 8.6                        /home/yusa/.bashrc                                  
#
# ~/.bashrc
#


# If not running interactively, don't do anything
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

# --- Pywal Startup Hook ---
# Baris ini memuat variabel warna Pywal terakhir yang dihasilkan (colors.sh)
# setiap kali Bash dimulai, memastikan warna terminal tetap persisten.
if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    . "$HOME/.cache/wal/colors.sh"
fi
# --------------------------

echo