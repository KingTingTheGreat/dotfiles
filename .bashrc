src() {
	source ~/.bash_profile
}

winptyIfy() {
	echo "alias $1='winpty $1'" >> ~/.bashrc
	src
}

aliasRc() {
	echo "alias $1='$2'" >> ~/.bashrc
	src
}
aliasProfile () {
	echo "alias $1='$2'" >> ~/.bash_profile
	src
}

mkcd() {
	mkdir $1 && cd $1
}

gpr() {
    feature_branch=$(git rev-parse --abbrev-ref HEAD)
    git push --set-upstream origin $feature_branch
    gh pr create --base main --head $feature_branch --title "merge $feature_branch" --fill --web
}

eval "$(zoxide init --cmd cd bash)"
export PATH="$PATH:/opt/nvim-linux64/bin"

# alias python='winpty python'
# alias wsl='winpty wsl'
# alias winget='winpty winget'
alias ghub='gh repo create --source=. --public && git push --set-upstream origin main'
# alias fzf='winpty fzf'
