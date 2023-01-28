set fish_greeting " Praise the sun "

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
