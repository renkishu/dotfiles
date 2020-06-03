export PATH=$PATH:~/scripts

complete -cf sudo

shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto'
alias ll='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -l'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto'
alias grep='grep --color=tty -d skip -i'
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias pacman='sudo pacman'
alias autoremove='sudo pacman -Rns $(pacman -Qtdq)'
alias ninit='nvim ~/.config/nvim/init.vim'
alias brc='nvim ~/.bashrc'
alias br='source ~/.bashrc'
alias npm='sudo npm'
alias gpjs='~/Documents/git_Projects/'
alias pjs='~/Documents/Projects/'
alias md='mkdir -p'
alias n='nvim'
alias notes='nvim ~/notes'

# prompt
PS1='\e[1;34m[\e[1;36m\!\e[1;34m][\e[1;36m\u@\h\e[1;34m][\e[1;36m\w\e[1;34m]\e[0m\n\$ '
