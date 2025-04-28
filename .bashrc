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

copyf () {
	cat $1 | clip
}

webimg () {
	curl -s "$1" | wezterm imgcat
}

info () {
	fastfetch -l $(/home/jting/projects/top-fetch-cli/top-fetch-cli file=out.txt pT=2 pL=2)
}

eval "$(zoxide init --cmd cd bash)"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="/opt/google/chrome:$PATH"
# export PATH=$PATH:~/.cache/rebar3/bin

function git_branch() {
	git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
PS1='\[\033[94;1m\][\[\033[94;1m\]\d \t\[\033[94;1m\]] \[\033[32m\]\u \[\033[35m\]\w\[\033[36m\]$(git_branch)\[\033[0m\]\n\$ '

# alias python='winpty python'
# alias wsl='winpty wsl'
# alias winget='winpty winget'
alias ghub='gh repo create --source=. --public && git push --set-upstream origin main'
alias ghub-priv='gh repo create --source=. --private && git push --set-upstream origin main'
# alias fzf='winpty fzf'
alias ls='ls -F --color'
alias tw-init='npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init -p'
alias weather='~/.config/weather.exe'
# alias todo="~/CompSciProjects/todo-cli/target/debug/todo-cli.exe"
alias nrd="node --run dev"
alias paste='powershell -command "Get-Clipboard"'
alias mkdir='mkdir -p'
alias :q="exit"
alias venv='python -m venv . && source bin/activate && printf "Include/\nLib/\nScripts/\npyvenv.cfg" >> .gitignore'
alias pyvercel="printf '{\n\t\"builds\": [\n\t\t{\n\t\t\t\"src\": \"/app.py\",\n\t\t\t\"use\": \"@vercel/python\"\n\t\t}\n\t],\n\t\"routes\": [\n\t\t{\n\t\t\t\"src\": \"/(.*)\",\n\t\t\t\"dest\": \"/app.py\"\n\t\t}\n\t]\n}' > vercel.json"
alias mui="npm install @mui/material @emotion/react @emotion/styled"
alias img="wezterm imgcat"
alias ansi-img="~/CompSciProjects/image-ansi-converter/image-ansi-converter.exe"
alias clip="xclip -sel clip"
alias paste="xclip -o"
alias start="xdg-open"
alias py="source bin/activate"
alias json="python -m json.tool"
alias track="top-fetch kitty dim=280 pL=2 pT=1 timeout=600 env='~/projects/top-fetch/env/.env' backup='~/projects/top-fetch/backup.txt' choice=5"
tailwindcss="~/tailwindcss"

bind -s 'set completion-ignore-case on'
# bind -x '"\C-l": clear'

# set -o vi

# python ~/random_ascii.py
# info
track


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
