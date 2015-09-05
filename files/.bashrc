#export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;34m\]$\[\033[00m\] '
export PS1='\n[\u] \[\033[01;33m\]\w\[\033[00m\]\[\033[1;31m\]$(__git_ps1)\[\033[0m\] $ '

alias ..='cd ..'
alias gits='git status'
alias la='ls -la --color=auto'
alias dev='"C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" *.sln &'
alias dev15='"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" *.sln &'
alias gitdiff='git diff --color-words'
