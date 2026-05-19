# function fish_greeting
#     fastfetch
# end

if status is-interactive
    set -U fish_greeting
    fish_hybrid_key_bindings
    if not ssh-add -l &>/dev/null
        ssh-add ~/.ssh/id_ed25519
    end
end

