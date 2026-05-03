#!/usr/bin/env sh

if ! command -v stow > /dev/null 2>&1; then
    echo "stow not found"
    exit 1
fi

for pkg in bash fish shell vim tmux; do
    [ -d "$pkg" ] && stow -R -t "$HOME" "$pkg"
done

echo -e "\ncheck if the packages in this file exist:"
realpath package-list
