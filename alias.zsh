alias pycharm="open -a pycharm"
alias python2="/usr/bin/python"
alias python3="/usr/local/bin/python3"
alias reload!='RELOAD=1 source ~/.zshrc'
go_libs="-lm"
go_flags="-g -Wall -include $HOME/root/allheads.h -O3"
alias go_c="cc99 -xc '-' $go_libs $go_flags"
# alias gcc=gcc-7
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
alias respawn="tmux respawn-pane -k -c '#{pane_current_path}'"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
