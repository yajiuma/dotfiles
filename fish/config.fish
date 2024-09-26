if status is-interactive
    # Commands to run in interactive sessions can go here
end

## PATH to homebrew
set PATH /opt/homebrew/bin $PATH

# ssh-agent
if test -z "$SSH_AGENT_PID"
    eval (ssh-agent -c)
    ssh-add ~/.ssh/id_rsa
    ssh-add ~/.ssh/id_rsa_github_private
end

## Aliases
alias ls="lsd"
alias ll="lsd -la"
alias g="git"
alias glog="git log --graph"
alias lg="lazygit"
alias tm="tmux"
alias vi="nvim"

if [ $SHLVL = 1 ]
    tmux
end
