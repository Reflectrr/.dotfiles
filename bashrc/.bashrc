#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export WLR_DRM_NO_MODIFIERS=1
export PATH=$PATH:~/.dotfiles/scripts:~/.local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib
source /usr/share/nvm/init-nvm.sh
exec fish
