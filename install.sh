#!/usr/bin/env sh

if command -v stow > /dev/null 2>&1; then
    stow -R -t $HOME . --no-folding --adopt # -nv
fi

echo -e "\ncheck if the packages in this file exist:"
realpath package-list
