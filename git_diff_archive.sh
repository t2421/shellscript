git_diff_archive(){
	local revision="HEAD^"
	local start="HEAD"
	if [ $# -eq 1 ]; then
		revision=$1
	fi
	if [ $# -eq 2 ]; then
		start=$1
		revision=$2
	fi

	git archive --format=zip --prefix=root/ HEAD `git diff --name-only $start $revision` -o archive.zip
}
git_diff_archive $1 $2
