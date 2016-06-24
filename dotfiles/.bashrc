### Prompts ###
PS1="\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\] › "
#PS1="\[\e[32;32m\]\u@\h \[\e[31;31m\][\w]\[\e[0m\\] $ "
#default ="\h:\W \u\$ "

### History ###
HISTSIZE=10000
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
shopt -s histappend                     # append to history, don't overwrite it
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

### Colors ###
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin

### Aliases ####
alias ls='ls -G'
alias cdd='cd ~/Desktop/'
alias cdh='cd $HOME'
alias cdl='cd ~/Sites/ucp-laravel/'
alias cds='cd ~/Scripts'
alias dupe='/Users/alex/Scripts/dupe.sh'
alias rfiles='/Users/alex/Scripts/rfiles.sh'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias pa='php artisan'
alias gel='python /Users/alex/Scripts/booru_scraper/booru_scraper.py'
alias update='brew update; brew upgrade --all'
alias lv='livestreamer -p mpv'
alias lvv=livestreamer_source
alias mal='trackma'
alias m='ncmpcpp'

### Aliases (rice) ###
alias fetch='/usr/local/bin/screenfetch-dev'
alias colors='/Users/alex/Scripts/colors.sh'
alias faces='/Users/alex/Scripts/faces.sh'
alias invaders='/Users/alex/Scripts/invaders.sh'
alias pipes='/Users/alex/Scripts/pipes.sh'

### Functions ###
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