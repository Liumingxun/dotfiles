# function fish_greeting
#     fastfetch
# end

if status is-interactive
    set -U fish_greeting
    # fish_hybrid_key_bindings
    if not ssh-add -l &>/dev/null
        ssh-add ~/.ssh/id_ed25519
    end
    set -gx __fish_git_prompt_showupstream verbose
    # if uname -r | string match -qi "*wsl*"
    #     set -gx GALLIUM_DRIVER d3d12
    #     set -gx LIBVA_DRIVER_NAME d3d12
    # end
end

