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
    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
}


unproxy() {
	export http_proxy=''
	export https_proxy=''
    export all_proxy=''
}


