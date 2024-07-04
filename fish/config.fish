# Main
set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# Aliases
alias arch-env="distrobox-enter arch -- fish"
alias df="duf -only local"
alias du="dust"
alias l="eza --icons -F -H --group-directories-first --git"
alias ll="eza --icons -F -H --group-directories-first --git -all"
alias lt="eza --tree"
alias tree="eza --tree -L 3"
