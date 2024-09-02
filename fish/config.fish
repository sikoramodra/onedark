set -U fish_greeting ""
set -gx EDITOR nvim
set -gx BROWSER brave
set -gx Lang en_US.UTF-8

# ⌁⌁⌁
# ➤➤➤

# omf
source $HOME/.config/fish/functions/fish_prompt.fish
source $HOME/.config/fish/functions/fish_right_prompt.fish

alias ga='git add .'
alias gs='git status'
alias gc='git commit -m'
alias gl='git log'

alias vim='nvim'
alias pac='sudo pacman'
alias unlock='sudo rm /var/lib/pacman/db.lck'

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# bat
# alias cat='bat'

function cheatsh --description "Streamline cheat.sh call"
    curl cheat.sh/$argv
end

# log into fish when switched into root
alias su='su -s /bin/fish'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."' # only hidden files

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# ip
alias ip='ip -color'

# others
alias pipes='bash -c $HOME/.pipes'
alias icat='kitty +kitten icat'
alias fm='dolphin .'
alias owofetch='neofetch --source /home/wm/.config/neofetch/Nyarch.png'
