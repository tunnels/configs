PS1="\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\] › "
#PS1="\[\e[32;32m\]\u@\h\[\e[31;31m\][\w]\[\e[0m\\]$ "
#default ="\h:\W \u\$ "

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin

# Aliases
alias ls='ls -G'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias update='brew update; brew upgrade'; #brew reinstall mpv --with-libbs2b --with-libquvi'
alias lv='livestreamer -p mpv'
alias dupe='/Users/alex/Scripts/dupe.sh'
alias rfiles='/Users/alex/Scripts/rfiles.sh'
alias gif='/Users/alex/Scripts/gif.sh'
alias webm='/Users/alex/Scripts/webm.sh'
alias lb='LC_ALL=ja_JP.UTF-8 wine /Volumes/Media/Games/Little\ Busters\!/REALLIVE.exe'
alias wine='LC_ALL=ja_JP.UTF-8 wine'

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

alias loop='mpv -loop=inf'