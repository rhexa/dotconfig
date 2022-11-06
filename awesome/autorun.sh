#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run VBoxClient-all
run setxkbmap -layout fi
killall pulseaudio && pulseaudio -D
