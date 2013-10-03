#!/bin/bash

clear
echo "Jarvis Online" | figlet
read message

if [ "$message" = "mailbox" ] ; then
  open http://gmail.com
  sleep 4
elif [ "$message" = "drive" ] ; then
  open http://drive.google.com
  sleep 4
elif [ "$message" = "keep" ] ; then
  open http://www.google.com/keep
  sleep 4
elif [ "$message" = "hacker news" ] ; then
  open http://news.ycombinator.com
  sleep 4
elif [ "$message" = "Time" ] ; then
  osascript -e "set volume 5"
  say `date +%r`
  osascript -e "set volume 0"
fi

