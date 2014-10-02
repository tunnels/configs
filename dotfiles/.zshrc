autoload -U colors && colors
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
PROMPT="%{$fg[green]%}%m %{$fg[yellow]%}%~%{$reset_color%} › " #»
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

#####

# Aliases
alias ls='ls -G'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'

#alias python='python3' # breaks notifications.py #

alias update='brew update; brew upgrade; brew reinstall --HEAD mpv'
alias dupe='/Users/alex/Scripts/dupe.sh'
alias rfiles='/Users/alex/Scripts/rfiles.sh'
alias gif='/Users/alex/Scripts/gif.sh'
alias webm='/Users/alex/Scripts/webm.sh'
alias lb='LC_ALL=ja_JP.UTF-8 wine /Volumes/Media/Games/Little\ Busters\!/REALLIVE.exe'


# vrms
alias rms=print "" 
alias v='echo No non-free or contrib packages installed on tunnels!  rms would be proud.'
alias vrms='rms && v'

#Aliases (rice)
alias fetch='/usr/local/bin/screenfetch-dev'
alias colors='/Users/alex/Scripts/colors.sh'
alias faces='/Users/alex/Scripts/faces.sh'
alias invaders='/Users/alex/Scripts/invaders.sh'
alias pipes='/Users/alex/Scripts/pipes.sh'

#Aliases (music)
alias mp3tag='wine /Users/alex/.wine/drive_c/Program\ Files/Mp3tag/Mp3tag.exe'
alias m='ncmpcpp'
alias music='ncmpcpp'
alias ralbum='mpc clear; mpc search album "$(mpc list album | gshuf -n1)" | mpc add && mpc play && clear'
alias rsongs='mpc clear; mpc listall | gshuf -n10 | mpc add && mpc play'

#####

# Paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export FPATH=/usr/local/share/zsh/site-functions:$FPATH

#Keybinds 
#make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line