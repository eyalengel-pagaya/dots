# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


# laziness
alias inst='sudo pacman -S'
alias uninst='sudo pacman -R'
alias please='sudo "$BASH" -c "$(history -p !!)"'
alias fuck='sudo "$BASH" -c "$(history -p !!)"'
alias fk='sudo "$BASH" -c "$(history -p !!)"'

alias bashrc='nano ~/.bashrc'
alias zshrc='nano ~/.zshrc'
alias i3config='nano ~/.config/i3/config'

# my common typos
alias clera='clear'

# wifi
alias wifi='sudo wifi-menu'

# JetBrains
alias box="/home/lidor/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox & disown"
alias clion="/home/lidor/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4323.58/bin/clion.sh & disown"
alias pycharm="/home/lidor/.local/share/JetBrains/Toolbox/apps/PyCharm-P/ch-0/182.4323.49/bin/pycharm.sh & disown"

alias ls='ls --color=auto'
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''
