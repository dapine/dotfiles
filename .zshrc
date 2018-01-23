# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dlp/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall

source ~/.aliases
source ~/.exports
source ~/.spectrum.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PROMPT="$FG[093]%~ $FG[091]>>>%{$reset_color%} "
