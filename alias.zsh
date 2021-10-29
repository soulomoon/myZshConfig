# alias pycharm="open -a pycharm"
# alias python2="/usr/bin/python"
# alias python3="/usr/local/bin/python3"
alias reload!='RELOAD=1 source ~/.zshrc'
go_libs="-lm"
go_flags="-g -Wall -include $HOME/root/allheads.h -O3"
alias go_c="cc99 -xc '-' $go_libs $go_flags"
# alias gcc=gcc-8
alias mate=vim
alias zshconfig="mate $HOME/.oh-my-zsh-custom/zshrc"
alias ohmyzsh="mate $HOME/.oh-my-zsh"
alias vjp="ssh vjp"

alias ares="ssh ares"
alias aresup="VBoxManage startvm ubuntu --type headless"
alias aresdown="VBoxManage controlvm ubuntu acpipowerbutton"
#alias fp="git add -A; git commit -m 'fast push at $(date)'; git pull; git push"
alias loadnvm=". /usr/local/opt/nvm/nvm.sh"
alias cat=ccat
alias mux=tmuxinator
# alias ls='gls --color=auto'
# alias lc='colorls'
alias tmuxreload="tmux source-file $HOME/.tmux.conf"
alias tmuxconfig="vim $HOME/.tmux/.tmux.conf"
alias vimconfig="vim $HOME/.vim/myplugin/vim-plug.vim"
alias ta="tmux attach"
alias respawn="tmux respawn-pane -k -c '#{pane_current_path}'"
alias runghc="stack runghc"
alias ghcrepl="stack exec -- ghci-color"
alias updatevim="vim -c 'PlugUpgrade' -c 'PlugUpdate' -c 'qa!'"
alias updatebrew="bubu"
alias london="sudo systemsetup -settimezone GMT"
alias china="sudo systemsetup -settimezone Asia/Shanghai"
alias ll="exa --long --header --git"
alias svim="stack exec -- vim"
alias lzd='lazydocker' 
alias dockerrun='docker run --rm -v $(pwd):/app --security-opt seccomp=unconfined'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
