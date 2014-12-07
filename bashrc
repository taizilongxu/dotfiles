# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# PS1="\[\e[37m\][\[\e[31m\]\u\[\e[37m\]@Pig \t\[\e[35m\]\w #\#\[\e[37m\]]\\$\[\e[37m\]"
PS1="\[\e[37m\][\[\e[31m\]\u\[\e[37m\] \[\e[32m\]\w \[\e[34m\]#\#\[\e[37m\]]\\$"
export HOSTNAME=Pig
alias cls='clear'
alias ls='ls --color=auto'
export PATH=$PATH:/usr/local/MATLAB/R2013b/bin
export Blog="/home/limbo/github/taizilongxu.github.io"
 export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
