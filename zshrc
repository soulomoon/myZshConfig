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

ZSH_THEME="spaceship"

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

source ~/.oh-my-zsh-custom/alias.zsh
source ~/.oh-my-zsh-custom/function.zsh
source ~/.oh-my-zsh-custom/completion.zsh
source ~/.oh-my-zsh-custom/spaceshipconfig.zsh
plugins=(
common-aliases
brew
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)



export EDITOR='vim'
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

export HISTSIZE=100000
export SAVEHIST=100000
export BACKGROUND=dark
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

