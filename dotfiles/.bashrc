PS1="\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\] # "
#PS1="\[\e[32;32m\]\u@\h\[\e[31;31m\][\w]\[\e[0m\\]$ "
#default = "\h:\W \u\$ "

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin

alias fate='cd /Users/alex/Torrents/Games/Fate\:stay\ night;wine Fate.exe'
alias cross='cd ~/Torrents/Games/Cross†Channel/; wine cc-eng.exe'

alias dl='youtube-hd'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias fetch='/usr/local/bin/screenfetch-dev'
alias pipes='~/Applications/pipes.sh'
alias colors='~/Applications/colors.sh'
alias update='brew update; brew upgrade; brew rm mpv; brew install --HEAD mpv --with-little-cms2 --with-libquvi --with-bundle'
alias music='ncmpcpp'
