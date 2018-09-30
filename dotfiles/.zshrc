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
PROMPT="%{$fg[green]%}%m %{$fg[yellow]%}%~%{$reset_color%} › " #»
#PROMPT="%{$fg[green]%}%n@%{$fg[green]%}%m %{$fg[red]%}[%~]%{$reset_color%} $ " #»

### Paths ###
export PATH=~/.composer/vendor/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/alex/Scripts
export FPATH=/usr/local/share/zsh/site-functions:$FPATH
export DYLD_LIBRARY_PATH=/usr/local/Cellar/msp430-gcc/4.7.0/lib:$DYLD_LIBRARY_PATH

### Aliases ###
alias ls='ls -G'
alias cdd='cd ~/Desktop/'
alias cdh='cd $HOME'
alias cdl='cd ~/Sites/ucp-laravel/'
alias cds='cd ~/Scripts'
alias cdp='cd ~/Programming/'
alias cdm='cd ~/Programming/MSP430'
alias dupe='/Users/alex/Scripts/dupe.sh'
alias webm='/Users/alex/Scripts/webm.sh'
alias rfiles='/Users/alex/Scripts/rfiles.sh'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias pa='php artisan'
alias gel='python /Users/alex/Scripts/booru_scraper/booru_scraper.py'
alias update='brew update; brew upgrade --cleanup'
alias lv='livestreamer -p mpv'
alias lvv=livestreamer_source
alias mal='trackma'
alias m='ncmpcpp'
alias ytd='youtube-dl'
alias serve='./server'
alias tada='./tada'
alias rand='python ~/Scripts/rand.py'

### Aliases (git) ###
alias gs='git status'
alias gf='git fetch'
alias gp='git pull'

### Aliases (rice) ###
alias fetch='/usr/local/bin/screenfetch'
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
nyaa()
{
	nyaa.sh "$1"
}

# Tell the terminal about the working directory whenever it changes.
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]]; then

    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL, including
        # the host name to disambiguate local vs. remote paths.

        # Percent-encode the pathname.
        local URL_PATH=''
        {
            # Use LC_CTYPE=C to process text byte-by-byte.
            local i ch hexch LC_CTYPE=C
            for ((i = 1; i <= ${#PWD}; ++i)); do
                ch="$PWD[i]"
                if [[ "$ch" =~ [/._~A-Za-z0-9-] ]]; then
                    URL_PATH+="$ch"
                else
                    hexch=$(printf "%02X" "'$ch")
                    URL_PATH+="%$hexch"
                fi
            done
        }

        local PWD_URL="file://$HOST$URL_PATH"
        #echo "$PWD_URL"        # testing
        printf '\e]7;%s\a' "$PWD_URL"
    }

    # Register the function so it is called whenever the working
    # directory changes.
    autoload add-zsh-hook
    add-zsh-hook chpwd update_terminal_cwd

    # Tell the terminal about the initial directory.
    update_terminal_cwd
fi
