#prevent accitently overwritting
set -o noclobber
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/sqlite/bin:$PATH"
#export http_proxy='http://127.0.0.1:1080'
#export https_proxy='http://127.0.0.1:1080'
export TERM="xterm-256color"
# export PATH=$HOME/.local/bin:$PATH
# export PATH=$HOME/root/bin:$PATH
export PATH=$HOME/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
source $ZSH_CUSTOM/alias.zsh
source $ZSH_CUSTOM/function.zsh
source $ZSH_CUSTOM/completion.zsh
source $ZSH_CUSTOM/spaceshipconfig.zsh

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
zstyle ':bracketed-paste-magic' active-widgets '.self-*'
### Fix slowness of pastes

# workaround for slow application completetion
zstyle :completion::complete:open:option-a-1: application-path /Applications
# workaround 

ZSH_THEME="spaceship"
plugins=(
git
fasd
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
#rmove dup
typeset -U PATH 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
proxy
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
echo "hello"
