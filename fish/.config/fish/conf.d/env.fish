set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME  $HOME/.cache
set -gx XDG_DATA_HOME   $HOME/.local/share
set -gx XDG_STATE_HOME  $HOME/.local/state

if command -q code
    set -gx EDITOR "code --wait"
else
    set -gx EDITOR vim
end

if command -q bat
    set -gx MANROFFOPT -c
    set -gx MANPAGER "sh -c 'col -bx | bat --pager \"less -R\" -l man -p'"
end

set -g __fish_ls_command eza --group-directories-first -x
set -g __fish_ls_indicators_opt -F always
