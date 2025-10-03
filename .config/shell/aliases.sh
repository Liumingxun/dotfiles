path(){
    echo "$PATH" | tr ':' '\n' | grep -v '/mnt'
}

24bitcolor() {
    curl -s https://gist.githubusercontent.com/Liumingxun/a8fc3578bd88d076b2f9fe3fdc0ead13/raw/1875ff9b84a014214d0ce9d922654bb34001198e/24-bit-color.sh | sh
}

if uname -r | grep -qi "wsl"; then
    alias o=explorer.exe
fi

alias _="sudo "
alias ls='eza --group-directories-first -xF'
