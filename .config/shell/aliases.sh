path(){
    echo "$PATH" | tr ':' '\n' | grep -v '/mnt'
}

if uname -r | grep -qi "wsl"; then
    alias o=explorer.exe
fi

alias _="sudo "
alias ls='eza --group-directories-first -xF'
