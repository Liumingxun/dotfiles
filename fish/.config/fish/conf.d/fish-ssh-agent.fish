if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    # Remove stale sockets from previously dead agents
    for sock in ~/.ssh/agent/s.*
        test -S $sock; and rm -f $sock
    end
    __ssh_agent_start
end
