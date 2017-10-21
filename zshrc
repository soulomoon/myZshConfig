export PATH=~/root/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH="/Users/soulomoon/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

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
POWERLEVEL9K_COLOR_SCHEME='light'
ZSH_CUSTOM=~/.oh-my-zsh-custom
plugins=(
httpie
common-aliases
web-search
#tmux
#tmuxinator
fasd
brew
git
#pyenv
virtualenv
#zsh-nvm
pip
yarn
django
zsh_reload
colored-man-pages
flask
#zsh-dircolors-solarized
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export CLICOLOR=1

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

go_libs="-lm"
go_flags="-g -Wall -include ~/root/allheads.h -O3"
alias go_c="cc99 -xc '-' $go_libs $go_flags"
alias gcc=gcc-7
alias mate=vim
alias j=z
alias zshconfig="mate ~/.oh-my-zsh-custom/zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias vjp="ssh vjp"
alias fp="git add -A; git commit -m "fast push at $(date)"; git pull; git push"
alias loadnvm=". /usr/local/opt/nvm/nvm.sh"
alias cat=ccat
alias mux=tmuxinator
alias ls='gls --color=auto'
alias lc='colorls'
alias tmuxreload="tmux source-file ~/.tmux.conf"
alias zshreload="zsh_reload"
alias tmuxconfig="vim ~/.tmux/.tmux.conf"
alias vimconfig="vim ~/.vim/myplugin/vim-plug.vim"
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
eval "$(gdircolors ~/.dircolors-solarized)"
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
