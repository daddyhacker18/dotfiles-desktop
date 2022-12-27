# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# stop instant prompt warning
typeset -g POWERLEVEL10K_INSTANT_PROMPT=quiet


# enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# custom variables
EDITOR=vim

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshhistory
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#setopt autocd beep
#bindkey -e  # set emacs mode (not vi mode)


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/giles/.zshrc'

#autoload -Uz compinit
#compinit

# End of lines added by compinstall
#
# set starship as prompt
# eval "$(starship init zsh)"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# custom zsh keybinds
bindkey '^ ' autosuggest-accept

# load aliases and shortcuts if exist
[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

# load; should be last
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source ~/powerlevel10k/powerlevel10k.zsh-theme
# neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
