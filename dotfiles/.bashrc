PS1="\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\] › "
PS1="% "
#PS1="\[\e[32;32m\]\u@\h \[\e[31;31m\][\w]\[\e[0m\\] $ "
#default ="\h:\W \u\$ "

HISTSIZE=10000
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
shopt -s histappend                     # append to history, don't overwrite it
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin

# Functions
livestreamer_source() 
{
	livestreamer $1 source -p mpv
}
mergev()
{
	gm convert "$1" "$2" -append $3
}
mergeh()
{
	gm convert "$1" "$2" +append $3
}

# Aliases
alias ls='ls -G'
alias cdd='cd ~/Desktop/'
alias cdh='cd ~/haskell/'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias update='brew update; brew upgrade'
alias lv='livestreamer -p mpv'
alias lvv=livestreamer_source
alias loop='mpv -loop=inf'
alias mal='trackma'
alias dupe='/Users/alex/Scripts/dupe.sh'
alias rfiles='/Users/alex/Scripts/rfiles.sh'
alias webm='/Users/alex/Scripts/webm.sh'

# Aliases (rice)
alias fetch='/usr/local/bin/screenfetch-dev'
alias colors='/Users/alex/Scripts/colors.sh'
alias faces='/Users/alex/Scripts/faces.sh'
alias invaders='/Users/alex/Scripts/invaders.sh'
alias pipes='/Users/alex/Scripts/pipes.sh'

# Aliases (music)
alias m='ncmpcpp'
alias music='ncmpcpp'
alias ralbum='mpc clear; mpc search album "$(mpc list album | gshuf -n1)" | mpc add && mpc play && clear'
alias rsongs='mpc clear; mpc listall | gshuf -n10 | mpc add && mpc play'


alias appeng='python /Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/dev_appserver.py /Users/alex/Sites/GTASS/www'
alias deploy='python /Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/appcfg.py -A gtass-1256 -V a1 update /Users/alex/Sites/GTASS/www'

alias prol='swipl'