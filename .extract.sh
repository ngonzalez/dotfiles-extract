# GROUP_NAME
export GRP="GROUP_NAME"

# extract
. ~/.tools/.extract

# clear files
find . -name '*.DS_Store' -type f -delete
find . -name '*.url' -type f -delete
find . -name '*.txt' -type f -delete

# clear COMPLETE tags
find . -name \"*[${GRP}]*COMPLETE*[${GRP}]*\" -type f -delete

# set dates on directories with COMPLETE tags
for i in $(ls); do
  echo "${i}"
  . ~/.tools/.fixdir-silent "${i}"
  . ~/.tools/.fixdate "${i}"
  . ~/.tools/.shared_check "${i}"
  . ~/.tools/.fixdir-silent "${i}"
done
