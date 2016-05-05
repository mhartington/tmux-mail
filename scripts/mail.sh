#!/usr/bin/env bash

getGmail(){
  mailrc=~/.config/mailrc.txt
  OUTPUT="$(wget -q -O - https://mail.google.com/a/gmail.com/feed/atom --config "$mailrc" | grep -E -m 1 -o '<fullcount>(.*)</fullcount>' | sed -e 's,.*<fullcount>\([^<]*\)</fullcount>.*,\1,g')"
  if [ "$OUTPUT" == "0" ]
  then
    return 0
  else
    echo "✉ ${OUTPUT}"
  fi
}
getGmail
