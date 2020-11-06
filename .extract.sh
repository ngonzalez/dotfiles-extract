#! /bin/bash

# GROUP_NAME
export GRP="GROUP_NAME"

# extract
sh ~/.tools/.extract

# clear files
find . -name '*.DS_Store' -type f -delete
find . -name '*.url' -type f -delete
find . -name '*.txt' -type f -delete

# clear COMPLETE tags
find . -name \"*[${GRP}]*COMPLETE*[${GRP}]*\" -type f -delete

# set dates on directories with COMPLETE tags
for i in $(ls); do
  sh ~/.tools/.fixdir-silent "${i}"
  sh ~/.tools/.fixdate "${i}"
  sh ~/.tools/.shared_check "${i}"
  sh ~/.tools/.fixdir-silent "${i}"
done

exit 0
