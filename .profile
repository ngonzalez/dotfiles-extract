alias setdate="ls -a | grep -iv complete | sort | xargs touch | ls -a | grep -iv complete | sort | xargs -I '{}' ~/.setfile '{}'"
alias setalldate="ls | sort | xargs -I '{}' ~/.setdate '{}'"
alias fixcreatedat="ls | sort | xargs -I '{}' ~/.setfile '{}'"
alias fixupdatedat="ls | sort | xargs -I '{}' ~/.setfile2 '{}'"
alias fixallcreatedat="ls | sort | xargs -I '{}' ~/.fixallcreatedat '{}'"
alias fixdir="ls | xargs -I '{}' ~/.fixdir '{}'"
alias rip="cdparanoia -B && cfv -C -f cd.sfv *wav"
alias encode="ls | grep --colour=never '\.wav' | xargs -I '{}' lame -V0 -ms '{}'"
alias encode320="ls | grep --colour=never '\.wav' | xargs -I '{}' lame -b 320 -ms '{}'"
alias extractflac="ls | grep --colour=never '\.flac' | sort | xargs -I '{}' flac -d '{}'"
alias catsfv="ls | xargs -I '{}' ~/.catsfv '{}'"
alias catnfo="ls | xargs -I '{}' ~/.catnfo '{}'"
alias catm3u="ls | xargs -I '{}' ~/.catm3u '{}'"
alias extract="ls | grep --colour=never rar | grep -v download | grep -v part | xargs -I '{}' unrar x '{}'"
alias cleardsstore="find . -name '*.DS_Store' -type f -delete"
alias clearurls="find . -name '*.url' -type f -delete"
alias cleartxts="find . -name '*.txt' -type f -delete"
alias fixsrr="ls | xargs -I '{}' ~/.fixsrr '{}'"
alias checksfv="ls | xargs -I '{}' ~/.checksfv '{}'"
alias unpack="extract ; cleardsstore ; clearurls ; cleartxts ; ~/.archiverar ; fixdir ; checksfv"
alias fixpermissions="ls | xargs -I '{}' ~/.fixpermissions '{}'"
alias setinfos="ls | xargs -I '{}' ~/.shared_check '{}' ; ls | xargs -I '{}' ~/.fixdir-silent '{}'"
