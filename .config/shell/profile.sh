BAT_CMD=$(command -v bat || command -v batcat)

if [ -n "$BAT_CMD" ]; then
    export MANROFFOPT="-c"
    export MANPAGER="sh -c 'col -bx | $BAT_CMD --pager \"less -R\" -l man -p'"
fi

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export XDG_CONFIG_HOME="$HOME/.config"      # analogous to /etc
export XDG_CACHE_HOME="$HOME/.cache"        # analogous to /var/cache
export XDG_DATA_HOME="$HOME/.local/share"   # analogous to /usr/share
export XDG_STATE_HOME="$HOME/.local/state"

if command -v code >/dev/null 2>&1; then
    export EDITOR="code --wait"
else
    export EDITOR="vim"
fi
