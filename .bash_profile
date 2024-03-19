test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc
alias python='winpty python'
alias wsl='winpty wsl'
alias nvim='winpty nvim'
alias winget='winpty winget'
alias fzf='winpty fzf'
alias lua='winpty lua'
alias ghub='gh repo create --source=. --public && git push --set-upstream origin main'
