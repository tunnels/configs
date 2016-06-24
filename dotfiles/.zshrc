### History ###
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY

### Colors ###
autoload -U colors && colors
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

### Prompts ###
#PROMPT="%{$fg[green]%}%m %{$fg[yellow]%}%~%{$reset_color%} › " #»
PROMPT="%{$fg[green]%}%n@%{$fg[green]%}%m %{$fg[red]%}[%~]%{$reset_color%} $ " #»

### Paths ###
export PATH=~/.composer/vendor/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/alex/Scripts
export FPATH=/usr/local/share/zsh/site-functions:$FPATH

### Aliases ###
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

### Search ###
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

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