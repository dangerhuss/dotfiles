gen_cover() {
	mkdir -p $(cover_path)
	go test -coverprofile=`cover_file`
	echo
	echo "View report using func_report or html_report"
	echo
}

func_report() {
	go tool cover -func=`cover_file` | sed \$d | grep -v "100.0" | sort -n -k3,3
}

html_report() {
	go tool cover -html=`cover_file`
}

cover_path() {
	echo "$GOPATH/cover/`go list`"
}

cover_file() {
	echo "`cover_path`/cover.out"
}

venv() {
    [[ -n "$VIRTUAL_ENV" ]] && echo "[${VIRTUAL_ENV##*/}]"
}

