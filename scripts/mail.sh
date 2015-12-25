#!/usr/bin/env bash

function getGmail(){
  mailrc=~/.config/mailrc.txt
  echo -e "user=mikehartington@gmail.com\npassword=fhvfxioqhpuottve" > ${mailrc}
# while true ; do
  wget -q -O - https://mail.google.com/a/gmail.com/feed/atom --config "$mailrc" | grep -E -m 1 -o '<fullcount>(.*)</fullcount>' | sed -e 's,.*<fullcount>\([^<]*\)</fullcount>.*,\1,g'
#   sleep 300
# done
}
getGmail


