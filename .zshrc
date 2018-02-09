#                 ██
#                 ██
#  ██████  ██████░██
# ░░░░██  ██░░░░ ░██████░
#    ██  ░░█████ ░██░░░██░
#   ██    ░░░░░██░██  ░██░
#  ██████ ██████ ░██  ░██░
# ░░░░░░ ░░░░░░  ░░░  ░░░

export DEFAULT_USER="hate"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/home/hate/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="classyTouch"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  archlinux
  battery
)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH=$HOME/.config/Scripts

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='vim'
# Preferred browser
export BROWSER="chromium"

#fzf
export FZF_CTRL_R_OPTS='--sort --exact'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

#Check the weather:
weath() { curl wttr.in/$1 ;}

#FASD
eval "$(fasd --init auto)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias openskylab="openvpn --ca OPNsense-udp-1194-ca.crt --tls-auth OPNsense-udp-1194-tls.key"
alias ycommit="yadm commit -av"
alias ypush="yadm push -u origin master"
alias reload="source ~/.zshrc"
alias rdpsky="rdesktop -u hate@sky.lab -p 0n3m3dFuj1 -g 1366x768 &"
alias torrent="transmission-remote -n 'transmission:transmission' -a"
alias 2rancher="rsync -av --exclude-from '/home/hate/exclude.txt' /home/hate hate@rancher:/home/hate/backup/arch-i3"
alias 2freenas="rsync -av --exclude-from '/home/hate/exclude.txt' /home/hate /home/hate/freenas/backup/arch-i3"
alias jsondown="sudo pacman -U /var/cache/pacman/pkg/jsoncpp-1.8.4-1-x86_64.pkg.tar.xz"
alias mirror="sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"
alias v="f -e vim"             #quick opening files with vim
alias m="f -e mpv"             #quick opening files with mpv
alias o="a -e xdg-open"        #quick opening files with xdg-open
alias ..="cd .."
alias userkey="gpg --search-keys"
#neofetch
