[[ $- != *i* ]] && return 

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc
[ -f .bash_colors ] && . .bash_colors


PS1="\n${cyan}\h: ${reset_color} ${yellow}\w\n${reset_color}-> "

#####   A L I A S   #####
# terminal
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias c='clear'
alias _='sudo'

# packet manager
alias yyu='echo -e "sudo xbps-install -Su\n" && sudo xbps-install -Su'
#alias yys='echo -e "sudo xbps-query -Rs\n" && sudo xbps-query -Rs'
alias yyr='echo -e "sudo xbps-remove\n" && sudo xbps-remove'
alias yyl='echo -e "sudo xbps-query -l | most\n" && sudo xbps-query -l | most'
alias yyi='echo -e "sudo xbps-install\n" && sudo xbps-install'
alias yyc='echo -e "sudo xbps-remove -o\n" && sudo xbps-remove -o'
alias yyC='echo -e "sudo xbps-remove -O\n" && sudo xbps-remove -O'

# other
alias rr='ranger'
alias ee='nano'
alias gg='glances'
alias grep='grep --color'
alias zzz='echo -e "sudo pm-suspend\n" && sudo pm-suspend'
alias poweroff='echo -e "sudo poweroff\n" && sudo poweroff'
alias du='du -ach | sort -hr | most'
alias mplayer='mplayer -af volnorm'
alias wetter='curl -4 http://wttr.in/Eupen'
alias yt='mpsyt'
#####   END ALIAS   #####



#####   F U N C T I O N S   ##### 
[ -f .bash_functions ] && . .bash_functions
[ -f /usr/share/autojump/autojump.bash ] && . /usr/share/autojump/autojump.bash
[ -f /usr/share/doc/fzf/key-bindings.bash ] && . /usr/share/doc/fzf/key-bindings.bash

function xlocate { sudo xlocate $1 | cut -f1 | sort -u ; }

myip ()
{
    echo
    #value=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
    value=$(curl -s http://ipecho.net/plain)
    echo -e "${echo_bold_green} $value ${echo_normal}"
    echo
}

yys () 
{ 
echo -e "LOCAL\tsudo xbps-query -s\n" && sudo xbps-query -s "$1" 
echo
echo -e "REPO\tsudo xbps-query -Rs\n" && sudo xbps-query -Rs "$1"  
}

down4me () { curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g' ; }
del () { mkdir -p /tmp/.trash && mv "$@" /tmp/.trash ; }
mkcd () {  mkdir -p -- "$*"; cd -- "$*" ; }
lsgrep () { ls --color=auto | grep --color=auto "$*" ; }
copy () { scp $@ userB@192.168.1.X: ; }

# fzf fuzzy-finder functions
#fh () { eval $(history | fzf +s | sed 's/ *[0-9]* *//') ; }
#bind '"\C-R":"fh\n"'

#####   END FUNCTIONS   #####





