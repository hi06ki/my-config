# ENVIRONMENT VALIABLES
export GOPATH=$HOME/go


# PROMPT SETTINGS
autoload -Uz colors
colors

precmd() {
padding=$(( $COLUMNS - ( ${#HOST} + ${#USER} + ${#PWD} + 11 ) ))
eval "hyphens=\${(l:${padding}::-:)}"
case ${USERNAME} in
'root')
PROMPT="%B%F{014}---%F{008}(%F{082}%d%F{008})%F{014}$hyphens%F{008}(%F{014}%n%F{008}@%F{014}%m%F{008})%F{014}---%f
%F{009}>%F{124}>%F{052}>%f%b "
;;
*)
PROMPT="%B%F{014}---%F{008}(%F{082}%d%F{008})%F{014}$hyphens%F{008}(%F{014}%n%F{008}@%F{014}%m%F{008})%F{014}---%f
%F{009}>%F{011}>%F{010}>%f%b "
;;
esac
}

# Complete settings
zstyle ':completion:*:default' menu select=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extended_history 


# ALIAS SETTINGS
## Set python3 as default
## PREREQUISITE: Need to install python3
# alias python='python3'

## Set lolcat as cat
## PREREQUISITE: Need to install lolcat
alias cat='lolcat'

## Set option for rm
alias rm='rm -Irv'

## Set color option for ls
alias ls='ls --color=auto'

## Set 'lazygit' as 'lg'
## PREREQUISITE: Need to install 'lazygit'
alias lg='lazygit'
