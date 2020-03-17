#prevent accitently overwritting
set -o noclobber
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/root/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
# export PATH_TO_FX=$Home/lib/javafx-sdk-12.0.2/lib
#export http_proxy='http://127.0.0.1:1080'
#export https_proxy='http://127.0.0.1:1080'
export TERM="xterm-256color"
export NVM_DIR="$HOME/.nvm"
#export PATH="$HOME/.cabal/bin:$PATH"



# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv pyenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_COLOR_SCHEME="dark"
#POWERLEVEL9K_PYTHON_ICON='\U1F40D' # for the snake I like

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

source ~/.oh-my-zsh-custom/alias.zsh
source ~/.oh-my-zsh-custom/function.zsh
source ~/.oh-my-zsh-custom/completion.zsh
source ~/.oh-my-zsh-custom/spaceshipconfig.zsh
plugins=(
#httpie
fasd
common-aliases
#web-search
#tmux
#tmuxinator
# ripgrep
yarn
pyenv
docker
docker-compose
docker-machine
# docker
# fasd
brew
stack
#git
# virtualenv
#nvm
#pip
#yarn
django
zsh_reload
#colored-man-pages
#flask
#zsh-dircolors-solarized
ripgrep
# exa
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)



export EDITOR='vim'
#export CLICOLOR=1

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
export HISTSIZE=100000
export SAVEHIST=100000
export BACKGROUND=dark
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)



# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
eval $(thefuck --alias)
echo "hello"
#rmove dup
typeset -U PATH 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

proxy
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

source /Users/soulomoon/.nix-profile/etc/profile.d/nix.sh
