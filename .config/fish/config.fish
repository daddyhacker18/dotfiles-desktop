if status is-interactive
    # Commands to run in interactive sessions can go here
end

### set environment variables
export ZYPP_MEDIANETWORK=1 
export QT_QPA_PLATFORMTHEME=qt5ct																												# set QT platform to be qt5
export HISTCONTROL=ignoreboth       																										# remove duplicates in command history
export CM_LAUNCHER=rofi																																	# set clipmenud launcher to be rofi
set fish_prompt_pwd_dir_length 0																												# expand full path in prompt

### set path variables
fish_add_path path /home/giles/.emacs.d/bin/																						# add emacs/doom to path
fish_add_path path /home/giles/scripts/																									# add my own scripting directory to path
fish_add_path path /home/giles/.local/bin																								# add local bin directory
fish_add_path path /snap/bin                                                            # add snaps to path

### set aliases
alias ls='exa -lha'																																			# expand ls to include detail and color
#alias clear='clear && neofetch' 					    																					# show neofetch on clear console 
#alias mv='mv -i'                    																										# prompt on move
#alias rm='rm -i'                    																										# prompt on remove
alias rm='echo "This is not the command you were looking for.  Use trash"; false'
alias rmdir='echo "This is not the command you were looking for.  Use trash"; false'
alias backup='sh /ntfs/tresorit/My\ Scripts/backup2nas.sh'
alias vim='lvim'																																				# neovim to replace vi
alias yt-dlp-audio='yt-dlp -x --audio-format mp3'
alias cryfs-open='cryfs /ntfs/tresorit/My\ Vault/CryFS ~/CryFS/'
alias cryfs-close='cryfs-unmount "/home/giles/CryFS/"'

### starship prompt
starship init fish | source

### display sysinfo
# macchina
#neofetch
if test -f /home/giles/.autojump/share/autojump/autojump.fish; . /home/giles/.autojump/share/autojump/autojump.fish; end
