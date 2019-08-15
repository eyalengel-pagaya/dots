export LANG=en_US.UTF-8
# sources source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export TERM=xterm-256color
export ZSH="/home/lidor/.oh-my-zsh"
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:~/.local/bin/

export PATH=$PATH:~/Personal/Shared/scripts/
for dir in ~/Personal/Shared/scripts/*/; do
    if [ ! $(echo $PATH | grep -o $dir) ]; then
        export PATH=$PATH:$dir
    fi
done

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# laziness
alias inst='sudo pacman -S'
alias uninst='sudo pacman -Rsn'
alias update='sudo pacman -Syu'
alias fk='sudo $(fc -ln -1)'
alias fuck='sudo $(fc -ln -1)'
alias please='sudo $(fc -ln -1)'

alias l='lsd -l --color=auto'
alias lf='lsd -la --color=auto'
alias ll='lsd -la --color=auto'

# So it will support custom aliases in watch
alias watch='watch '

alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias i3config='vim ~/.config/i3/config'

alias xclip='xclip -selection clipboard'

alias neofetch='neofetch --ascii ~/.config/neofetch/shrekscii --ascii_colors 2 5 6 1'

# my common typos
alias clera='clear'
alias claer='clear'
alias cler='clear'

alias cd..='cd ..'

alias ls='l --color=auto'
alias cp='cp -i' # Ask for confirmation before overwriting

# start bicon for Biderctional text
# alias exit='kill -9 $(ps -p $PPID -o ppid=)'
# if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
    # bicon.bin
# fi

# SSH PAGAYA VM'S
vm() {
    if [ "$#" -lt 2 ]; then
        echo "Give at least two arguments"
        return 1
    else
        VM=research-$2
        GROUP=${3:-"research-remote"}
        case "$1" in
            "start") az vm start -g $GROUP -n $VM ;;
            "stop") az vm deallocate -g $GROUP -n $VM ;;
        esac
    fi
}

alias start="vm start"
alias stop="vm stop"
alias list_vms="az vm list -g research-remote --query '[].name' --output tsv | sort -V"
alias list_active_vms="az vm list -g research-remote -d --query \"[?powerState == 'VM running'].name\" --output tsv | sort -V"
alias list_inactive_vms="az vm list -g research-remote -d --query \"[?powerState != 'VM running'].name\" --output tsv | sort -V"
alias list_unattached_disks="az disk list -g research-remote --query \"[?diskState == 'Unattached'].name\" --output tsv | sort -V"

# alias python=python3.6

# TODO: Change GitHub repositories aliases from a file to a script that iterates over ~/Work/GitHub/
# TODO: Add abbreviations
# if [ -f ~/.aliases ]; then
    # pushd $(pwd)
    # mkdir /tmp/bash_aliases_init &> /dev/null
    # TEMP=$(mktemp -d -p /tmp/bash_aliases_init/)

    # if [ -z $TEMP ]; then
    # else 
        # cd $TEMP

        # awk '{print "alias "$1"=\"cd "$2"\""; print ""$1"_path="$2""}' ~/.bash_aliases > $TEMP/aliases
        # . $TEMP/aliases

        # rm -r $TEMP
    # fi

    # TEMP=""
    # rmdir /tmp/bash_aliases_init &> /dev/null
    # popd
# fi > /dev/null

if [ -d ~/Work/GitHub/ ]; then
    cd ~/Work/GitHub/
    mkdir /tmp/bash_aliases_init &> /dev/null
    FILE=$(mktemp -p /tmp/bash_aliases_init/)
    echo "test" > $FILE

    { echo -e "alias github='cd ~/Work/GitHub/'" && echo "github_path=~/Work/GitHub/" && echo; } > $FILE && \
    for dir in * ; do
        if [ -d "$dir" ]; then
            echo "alias $dir='cd ~/Work/GitHub/$dir'"
            echo "${dir}_path=~/Work/GitHub/$dir"
            echo
        fi
    done >> $FILE && \
    . $FILE &> /dev/null

    FILE=""
    rm -r /tmp/bash_aliases_init &> /dev/null 
    popd
fi > /dev/null
