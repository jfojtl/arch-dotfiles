# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jfojtl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls -l --color"
alias la="ls -la --color"
export VISUAL="emacs"
export EDITOR="emacs"

autoload -U promptinit && promptinit
autoload -U colors && colors

PROMPT="%F{blue}%n%f %F{yellow}%0~%f "

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx && xrandr -s 1440x900

export NVM_DIR="/home/jfojtl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

hsetroot -fill ss.jpg -blur 50

[ -s "/home/jfojtl/.dnx/dnvm/dnvm.sh" ] && . "/home/jfojtl/.dnx/dnvm/dnvm.sh" # Load dnvm
