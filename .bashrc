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
    gh pr create --base main --head $feature_branch --fill --web
}

eval "$(zoxide init --cmd cd bash)"
export PATH="$PATH:/opt/nvim-linux64/bin"

PS1='\[\033[94;1m\][\[\033[94;1m\]\d \t\[\033[94;1m\]] \[\033[32m\]\u \[\033[35m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n\$ '

# alias python='winpty python'
# alias wsl='winpty wsl'
# alias winget='winpty winget'
alias ghub='gh repo create --source=. --public && git push --set-upstream origin main'
# alias fzf='winpty fzf'
alias ls='ls -F --color'
alias tw-init='npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init -p'
alias weather='~/.config/weather.exe'
alias todo="/c/CompSciProjects/todo-cli/target/debug/todo-cli.exe"

python ~/random_ascii.py

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
