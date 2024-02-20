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
