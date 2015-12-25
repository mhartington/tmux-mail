#!/usr/bin/env bash

getGmail(){
  mailrc=~/.config/mailrc.txt
# while true ; do
  # wget -q -O - https://mail.google.com/a/gmail.com/feed/atom --config "$mailrc" | grep -E -m 1 -o '<fullcount>(.*)</fullcount>' | sed -e 's,.*<fullcount>\([^<]*\)</fullcount>.*,\1,g'
#   sleep 300
# done
}

main() {
  # getGmail
  echo "Hello"
}
main
