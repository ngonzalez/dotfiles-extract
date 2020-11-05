export CLICOLOR=1
export GREP_COLORS='ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36'
export GREP_OPTIONS='--color=always'
export LESS='-R'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias file="file -b"
alias l="ls -alrtTGh"
alias ls="ls -1"

eval "$(rbenv init -)"

alias start_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log start ; tail -f /tmp/postgresql.log"
alias stop_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log stop"
# After PostgreSQL Upgrade: rm -rf /usr/local/var/postgres ; initdb /usr/local/var/postgres -E utf8"
alias sql="psql -U enyo postgres"
