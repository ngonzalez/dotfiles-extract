export GREP_OPTIONS='--color=always'
export GREP_COLORS='ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36'
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export LESS='-R'
export GOPATH='/Users/enyo/Library/go'
export PS1="\u:\w\$(git branch 2>/dev/null | grep --colour=never -e '\* ' | sed 's/^..\(.*\)/ (\[\033[0;32m\]\1\[\033[0m\])/') $ "

alias ls="ls -1"
alias l="ls -alrtTGh"
alias file="file -b"
alias eject="diskutil unmountDisk /dev/disk1s1"

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias start_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log start ; tail -f /tmp/postgresql.log"
alias stop_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log stop"
# After PostgreSQL Upgrade: rm -rf /usr/local/var/postgres ; initdb /usr/local/var/postgres -E utf8"
alias sql="psql -U enyo postgres"

alias setdate="ls -Ap | grep -v / | sort | xargs touch | ls -Ap | grep -v / | sort | xargs -I '{}' ~/.setfile '{}'"
alias setalldate="ls | sort | xargs -I '{}' ~/.setdate '{}'"
alias fixdir="ls | xargs -I '{}' ~/.fixdir '{}' m3u"
alias encode320="ls | grep --colour=never '\.aiff' | sort | xargs -I '{}' lame -b 320 -ms '{}'"
alias catm3u="ls | xargs -I '{}' ~/.catm3u '{}'"
alias cleardsstore="find . -name '*.DS_Store' -type f -delete"
alias clearurls="find . -name '*.url' -type f -delete"
alias cleartxts="find . -name '*.txt' -type f -delete"
alias clearinfos="find . -name '*[TC]*COMPLETE*[TC]*' -type f -exec rm -f {} \;"
alias fixalldate="ls | sort | xargs -I '{}' ~/.fixdate '{}'"
alias setinfos="ls | xargs -I '{}' ~/.shared_check '{}'"
alias fixdirsilent="ls | xargs -I '{}' ~/.fixdir-silent '{}'"
