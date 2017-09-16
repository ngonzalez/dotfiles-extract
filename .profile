# export PATH=$HOME/.rvm/gems/ruby-head/bin:$HOME/.rvm/bin:/opt/local/bin:/opt/local/sbin:/Users/enyo/Library/go/bin:$PATH
export GREP_OPTIONS='--color=always'
export GREP_COLORS='ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36'
export LESS='-R'
export CLICOLOR='YES'
export GOPATH='/Users/enyo/Library/go'

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# PS1="\u:\w\$(git branch 2>/dev/null | grep --colour=never -e '\* ' | sed 's/^..\(.*\)/ (\[\033[0;32m\]\1\[\033[0m\])/') $ "
# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\[$(tput setaf 5)\]\u\[$(tput setaf 2)\] \W\[$(tput setaf 4)\] \\$ \[$(tput sgr0)\]"

alias ls="ls -1"
alias l="ls -alrtTGh"
alias file="file -b"
alias eject="diskutil unmountDisk /dev/disk1s1"

alias start_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log start ; tail -f /tmp/postgresql.log"
alias stop_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log stop"
# After PostgreSQL Upgrade: alias reset_pgsql="rm -rf /usr/local/var/postgres ; initdb /usr/local/var/postgres -E utf8"
alias sql="psql -U enyo postgres"

# alias s="bundle exec unicorn_rails -p 3000 -c config/unicorn.rb"
alias ss="rm -rf public/assets/ ; bundle exec rake assets:precompile RAILS_ENV=production ; bundle exec puma -p 9292 -C config/puma.rb -e production -d -b unix:///tmp/puma.sock"
alias s="rm -rf public/assets/ ; bundle exec rake assets:precompile RAILS_ENV=production ; bundle exec puma -p 9292 -C config/puma.rb -e production -b unix:///tmp/puma.sock"
alias start_redis="redis-server /usr/local/etc/redis.conf"
# alias start_solr="bundle exec rake sunspot:solr:run"
alias start_solr="bundle exec sunspot-solr start -p 8982"
alias start_ftp="pure-ftpd --verboselog -lpgsql:/etc/pureftpd-pgsql.conf"
# alias start_ftp="pure-ftpd --verboselog -lpuredb:/opt/local/etc/pure-ftpd/conf/pureftpd.pdb"
# alias checkftplogs="tail -f /var/log/ftp.log"
# alias start_mysql="sudo -u mysql mysqld_safe5"
# alias stop_mysql="sudo -u mysql mysqladmin5 -u root -p shutdown"
# alias reset_db="bundle exec rake db:drop ; bundle exec rake db:create ; bundle exec rake db:schema:load ; bundle exec rake db:seed"

alias setdate="ls -A | grep -iv complete | sort | xargs touch | ls -A | grep -iv complete | sort | xargs -I '{}' ~/.setfile '{}'"
alias setalldate="ls | sort | xargs -I '{}' ~/.setdate '{}'"
alias fixcreatedat="ls | sort | xargs -I '{}' ~/.setfile '{}'"
alias fixupdatedat="ls | sort | xargs -I '{}' ~/.setfile2 '{}'"
alias fixallcreatedat="ls | sort | xargs -I '{}' ~/.fixallcreatedat '{}'"
alias fixdir="ls | xargs -I '{}' ~/.fixdir '{}'"
alias rip="cdparanoia -B && cfv -C -f cd.sfv *wav"
alias encode="ls | grep --colour=never '\.wav' | sort | xargs -I '{}' lame -V0 -ms '{}'"
alias encode320="ls | grep --colour=never '\.wav' | sort | xargs -I '{}' lame -b 320 -ms '{}'"
alias extractflac="ls | grep --colour=never '\.flac' | sort | xargs -I '{}' flac -d '{}'"
alias catsfv="ls | xargs -I '{}' ~/.catsfv '{}'"
alias catnfo="ls | xargs -I '{}' ~/.catnfo '{}'"
alias catm3u="ls | xargs -I '{}' ~/.catm3u '{}'"
alias extract="ls *.rar | grep -v download | grep -v part | xargs -I '{}' unrar x '{}'"
alias untar="ls *.tar | grep -v download | grep -v part | xargs -I '{}' tar -zxvf '{}'"
alias cleardsstore="find . -name '*.DS_Store' -type f -delete"
alias clearurls="find . -name '*.url' -type f -delete"
alias cleartxts="find . -name '*.txt' -type f -delete"
alias fixsrr="ls | xargs -I '{}' ~/.fixsrr '{}'"
alias checksfv="ls | xargs -I '{}' ~/.checksfv '{}'"
alias unpack="extract ; cleardsstore ; clearurls ; cleartxts ; ~/.archiverar ; fixdir ; checksfv"
alias fixpermissions="ls | xargs -I '{}' ~/.fixpermissions '{}'"
alias setinfos="ls | xargs -I '{}' ~/.shared_check '{}' ; ls | xargs -I '{}' ~/.fixdir-silent '{}'"
alias extract_scenedl="ls *.rar | xargs -I '{}' unrar x -pscenedownloads -y '{}'"
