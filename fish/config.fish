set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

set -x XDG_CONFIG_HOME "$HOME/.config"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

## PATH to homebrew
set PATH /opt/homebrew/bin $PATH

# ssh-agent
if status is-interactive
    if not set -q SSH_AGENT_PID; or not ps -p $SSH_AGENT_PID >/dev/null 2>&1
        eval (ssh-agent -c) >/dev/null 2>&1
        if test -f ~/.ssh/id_rsa
            ssh-add ~/.ssh/id_rsa 2>/dev/null
        end
        if test -f ~/.ssh/id_rsa_github_private
            ssh-add ~/.ssh/id_rsa_github_private 2>/dev/null
        end
    end
end

## Aliases
alias ls="lsd"
alias ll="lsd -la"
alias g="git"
alias glog="git log --graph"
alias lg="lazygit"
alias tm="tmux"
alias vi="nvim"

#if [ $SHLVL = 1 ]
#    tmux
#end

#if not set -q TMUX
#    tmux attach || tmux new
#end

# screen clear when tmux exit
if status is-interactive
    clear
end
