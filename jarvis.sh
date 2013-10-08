#!/bin/bash

### Welcome Message
osascript -e "set volume 6"
say "Sup Sir"
osascript -e "set volume 0"
### end Welcome Message


### Initialize message in case first attempted read fails
message=""


###Begin Polling
while [ 1 ] ; do 

### Fancy Welcome Screen
  clear
  echo "Jarvis Online" | figlet
    osascript ./JarvisCallFromBash.scpt 2> /dev/null && read message 2> /dev/null
 if (( $? == 0 )) ; then
    if [ "$message" = "Mailbox" ] ; then
      open http://gmail.com
      say "opening mailbox"
      sleep 2
    elif [ "$message" = "Drive" ] ; then
      open http://drive.google.com
      sleep 2
    elif [ "$message" = "Keep" ] ; then
      open http://www.google.com/keep
      sleep 2
    elif [ "$message" = "Hacker news" ] ; then
      open http://news.ycombinator.com
      sleep 2
    elif [ "$message" = "Time" ] ; then
      osascript -e "set volume 5"
      say `date +%r`
      osascript -e "set volume 0"
     elif [ "$message" = "Maps" ] ; then
      open http://maps.google.com
      sleep 2
    elif [[ "$message" =~ "Google" ]] ; then
      parsed=`echo $message | sed 's/Google//' | sed 's/ /\+/g'`
      open "https://www.google.com/#q="$parsed"&safe=active"
    elif [[ "$message" =~ "Play a tune" ]] ; then
      bash play_a_tune.sh &
      
    fi
  fi
done
