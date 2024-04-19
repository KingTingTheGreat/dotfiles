updateSrc() {
	source ~/.bash_profile
}

winptyIfy() {
	echo "alias $1='winpty $1'" >> ~/.bash_profile
	updateSrc
}

cAlias() {
	echo "alias $1='$2'" >> ~/.bash_profile
	updateSrc
}

mkcd() {
	mkdir $1 && cd $1
}

eval "$(zoxide init --cmd cd bash)"
export PATH="$PATH:/opt/nvim-linux64/bin"

alias python='winpty python'
alias wsl='winpty wsl'
alias nvim='winpty nvim'
alias winget='winpty winget'
alias fzf='winpty fzf'
alias lua='winpty lua'
alias ghub='gh repo create--source=. --public && git push --set-upstream origin main'
alias vim='nvim'
