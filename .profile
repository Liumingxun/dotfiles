[ -f "$HOME/.config/shell/profile.sh" ] && . "$HOME/.config/shell/profile.sh"

[ -d "$XDG_STATE_HOME"/bash ] || mkdir -p $XDG_STATE_HOME/bash

export HISTFILE="$XDG_STATE_HOME/bash/history"
export HISTIGNORE="cd:cd -:cd ..:pwd:ls:exit"
