#prevent accitently overwritting
set -o noclobber
export PATH=$HOME/root/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export ZSH=$HOME/.oh-my-zsh
#export http_proxy='http://127.0.0.1:1080'
#export https_proxy='http://127.0.0.1:1080'
export TERM="xterm-256color"
export NVM_DIR="$HOME/.nvm"


#ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_COLOR_SCHEME=$BACKGROUND
POWERLEVEL9K_PYTHON_ICON='\U1F40D' # for the snake I like

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(
httpie
common-aliases
web-search
#tmux
#tmuxinator
fasd
brew
git
virtualenv
nvm
pip
yarn
django
zsh_reload
colored-man-pages
flask
tldr
#zsh-dircolors-solarized
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
#export CLICOLOR=1

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
export HISTSIZE=100000
export SAVEHIST=100000

go_libs="-lm"
go_flags="-g -Wall -include $HOME/root/allheads.h -O3"
alias reload!='RELOAD=1 source ~/.zshrc'
alias go_c="cc99 -xc '-' $go_libs $go_flags"
alias gcc=gcc-7
alias mate=vim
alias j=z
alias zshconfig="mate $HOME/.oh-my-zsh-custom/zshrc"
alias ohmyzsh="mate $HOME/.oh-my-zsh"
alias vjp="ssh vjp"
#alias fp="git add -A; git commit -m 'fast push at $(date)'; git pull; git push"
alias loadnvm=". /usr/local/opt/nvm/nvm.sh"
alias cat=ccat
alias mux=tmuxinator
alias ls='gls --color=auto'
alias lc='colorls'
alias tmuxreload="tmux source-file $HOME/.tmux.conf"
alias tmuxconfig="vim $HOME/.tmux/.tmux.conf"
alias vimconfig="vim $HOME/.vim/myplugin/vim-plug.vim"
alias ta="tmux attach"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

fp() {
	git add -A;
	if [ -n "$1" ];
	then git commit -m $1;
	else echo "-------------You did not input a commit, set to default.----------";
		git commit -m "This is fast push";
	fi
	git pull;
	git push;
}
proxy() {
	export http_proxy='http://127.0.0.1:1080'
	export https_proxy='http://127.0.0.1:1080'
}
unproxy() {
	export http_proxy=''
	export https_proxy=''
}
sproxy() {
	export http_proxy=socks5://127.0.0.1:1081
	export https_proxy=socks5://127.0.0.1:1081
}

it2prof() {
  if [ -n "$TMUX" ]; then
    scrn_prof "$1"
  else
    # send escape sequence to change iTerm2 profile
    echo -e "\033]50;SetProfile=$1\007"
  fi
}

scrn_prof() {
    echo -e "\033Ptmux;\033\033]50;SetProfile=$1\007\033\\"
}

light() {
	export BACKGROUND=light
    it2prof $BACKGROUND
    src
}

dark() {
	export BACKGROUND=dark
    it2prof $BACKGROUND
    src
}


autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.oh-my-zsh-custom/rabbitmq_complete.bash


eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(gdircolors $HOME/.dircolors-solarized)"
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(thefuck --alias)

#rmove dup
typeset -U PATH 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
