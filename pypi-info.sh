#!/bin/sh

usage ()
{
  echo 'Usage :'
  echo "\t$0 requirements.txt"
  exit
}

if [ "$#" -ne 1 ]
then
  usage
fi

grep -v '^#' $1 | while read -r line ; do
    package=`echo $line | awk -F'==' '{print $1}'`
    curl -L https://pypi.python.org/pypi/$package/json 2>/dev/null | jq -r '.info | .summary + "\n" + .home_page' | sed 's/^/# /' | tee -a new-$1
    echo $line | tee -a new-$1
    echo "" | tee -a new-$1
done