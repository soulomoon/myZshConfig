export PATH=$HOME/bin:$PATH
export ZSH=/Users/soulomoon/.oh-my-zsh
export http_proxy='http://127.0.0.1:1080'
export https_proxy='http://127.0.0.1:1080'
export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_COLOR_SCHEME='dark'
ZSH_CUSTOM=~/.oh-my-zsh-custom
plugins=(
httpie
common-aliases
web-search
tmux
tmuxinator
fasd
brew
git
#pyenv
virtualenv
#zsh-nvm
pip
yarn
django
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

 alias mate=vim
 alias zshconfig="mate ~/.oh-my-zsh-custom/zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"
 alias vjp="ssh vjp"
 alias fastpush="git add -A; git commit -m "fast push"; git pull; git push"


 proxy() {
    export http_proxy='http://127.0.0.1:1080'
    export https_proxy='http://127.0.0.1:1080'
 }
 unproxy() {
    export http_proxy=''
    export https_proxy=''
 }

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval $(thefuck --alias)
alias cat=ccat
alias mux=tmuxinator
# fixing slow zsh
alias loadnvm=". /usr/local/opt/nvm/nvm.sh"

export EDITOR='vim'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
