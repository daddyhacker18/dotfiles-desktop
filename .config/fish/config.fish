if status is-interactive
    # Commands to run in interactive sessions can go here
end

### set environment variables
export ZYPP_MEDIANETWORK=1 
export QT_QPA_PLATFORMTHEME=qt5ct
export HISTCONTROL=ignoreboth       # remove duplicates in command history

### set aliases
alias ls='exa -lha'                 # expand ls to include detail and color
alias clear='clear && neofetch'     # show neofetch on clear console 
alias mv='mv -i'                    # prompt on move
alias rm='rm -i'                    # prompt on remove

### starship prompt
starship init fish | source

### display sysinfo
# macchina
neofetch
