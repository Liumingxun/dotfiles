BAT_CMD=$(command -v bat || command -v batcat)

if [ -n "$BAT_CMD" ]; then
    export MANROFFOPT="-c"
    export MANPAGER="sh -c 'col -bx | $BAT_CMD --pager \"less -R\" -l man -p'"
    
    cat() {
        if [[ -t 1 ]] && [[ $# -eq 1 ]] && [[ -f "$1" ]]; then
            local file="$1"
            
            case "$file" in
                *.txt|*.md|*.markdown|*.json|*.yml|*.yaml|*.xml|*.html|*.htm|*.js|*.css|*.py|*.sh|*.bash|*.zsh|*.rb|*.php|*.java|*.c|*.cpp|*.h|*.hpp|*.go|*.rs|*.toml|*.ini|*.cfg|*.conf)
                    "$BAT_CMD" --pager=never "$file"
                    ;;
                *)
                    if [[ "$(file -b --mime-type "$file")" == text/* ]]; then
                        "$BAT_CMD" --pager=never "$file"
                    else
                        command cat "$file"
                    fi
                    ;;
            esac
        elif [[ -p /dev/stdin ]] || [[ ! -t 0 ]]; then
            command cat "$@"
        else
            command cat "$@"
        fi
    }
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
