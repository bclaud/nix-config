set fish_greeting " Praise the sun "

# this should be handled by yubikey-agent, not here. But is probably conflicting

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

#starship
starship init fish | source

# Z
zoxide init fish | source

#aliases
alias mt="mix test"
alias g="git"
alias lzd="lazydocker"
alias lzg="lazygit"

#direnv
direnv hook fish | source
