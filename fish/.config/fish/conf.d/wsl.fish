if uname -r | string match -qi "*wsl*"
    fish_add_path -p $HOME/.local/wsl-bin
    chmod +x $HOME/.local/wsl-bin/*
end
