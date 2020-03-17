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
  export https_proxy='http://127.0.0.1:1080'
  export http_proxy='http://127.0.0.1:1080'  
  export all_proxy='socks5://127.0.0.1:1086'
}


unproxy() {
	export http_proxy=''
	export https_proxy=''
  export all_proxy=''
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
}

dark() {
	export BACKGROUND=dark
    it2prof $BACKGROUND
}
prepend_to_path () {
  path[1,0]=$1
  typeset -U path
}

