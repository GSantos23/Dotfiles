# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Tmux stuff (current one)
#if command -v tmux>/dev/null; then
#    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux
#fi

#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    #tmux attach -t default  || tmux new -s default
    #tmux a || tmux
#    exec tmux
    #tmux attach || exec tmux new-session && exit;
#fi

# Put your fun stuff here.
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $([[ $? != 0 ]] && echo "\[\033[01;31m\]:(\[\033[01;34m\] ")\$\[\033[00m\]"

#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $\[\033[00m\]"
#export $HOME/bin for own scripts
export PATH=$PATH:$HOME/bin/

# Completion for kitty
source <(kitty + complete setup bash)

# To allow doas autocomplete
complete -cf doas

# Aliases
alias ls="ls -l --color=auto"
alias pycharm="/opt/pycharm-community-2020.2/bin/pycharm.sh &> /dev/null"
alias sublime=subl
alias intellij="/opt/idea-IC-202.7660.26/bin/idea.sh &> /dev/null"
alias cdtdebug="/opt/cdt-stand-alone-debugger/cdtdebug &> /dev/null"
alias eclipse="/opt/eclipse/eclipse &>/dev/null"
alias keepassxc="keepassxc &> /dev/null"
alias tmux="tmux -2"
alias evince="evince &> /dev/null"
alias ccstudio="/home/gerson/ti/ccs1010/ccs/eclipse/ccstudio &> /dev/null"
alias xaamp="/opt/lampp/lampp"
alias thonny="/home/gerson/.local/bin/thonny"
alias mv="mv -v"
alias sakura="sakura &>  /dev/null"
alias firefox-bin="firefox-bin &> /dev/null"
