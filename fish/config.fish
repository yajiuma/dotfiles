if status is-interactive
    # Commands to run in interactive sessions can go here
end

## PATH to homebrew
set PATH /opt/homebrew/bin $PATH

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
