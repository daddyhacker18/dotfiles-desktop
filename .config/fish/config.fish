if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set environment variables
export ZYPP_MEDIANETWORK=1 

# set aliases
alias ls='exa -lha'
alias clear='clear && macchina'

# starship prompt
starship init fish | source

# display sysinfo
macchina
