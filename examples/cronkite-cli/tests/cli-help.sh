#!/bin/bash
OUTPUT=$(${1} -help 2>&1)
rval=$?
# echo it out once just for ctest -V output
echo $OUTPUT
echo $OUTPUT | grep -q 'Usage'
nval=$?
if [ $rval -eq 0 ] && [ $nval -eq 0 ]; then
    exit 0;
else
    exit 1;
fi
