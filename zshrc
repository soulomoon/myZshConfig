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
#export http_proxy='http://127.0.0.1:1080'
#export https_proxy='http://127.0.0.1:1080'
export TERM="xterm-256color"
export NVM_DIR="$HOME/.nvm"


# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="spaceship"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv pyenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_COLOR_SCHEME="dark"
#POWERLEVEL9K_PYTHON_ICON='\U1F40D' # for the snake I like

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(
#httpie
common-aliases
#web-search
#tmux
#tmuxinator
#pyenv
# docker
fasd
brew
#stack
#git
# virtualenv
#nvm
#pip
#yarn
#django
zsh_reload
#colored-man-pages
#flask
tldr
#zsh-dircolors-solarized
zsh-completions
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
#export CLICOLOR=1

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
export HISTSIZE=100000
export SAVEHIST=100000
export BACKGROUND=dark


source ~/.oh-my-zsh-custom/alias.zsh
source ~/.oh-my-zsh-custom/function.zsh



#eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#eval "$(gdircolors $HOME/.dircolors-solarized)"
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(thefuck --alias)

echo "hello"

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"
#source ~/.oh-my-zsh-custom/rabbitmq_complete.bash
#source ~/.oh-my-zsh-custom/completion.zsh


#rmove dup
typeset -U PATH 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
