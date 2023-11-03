#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run VBoxClient-all
run setxkbmap -layout us
killall pulseaudio && pulseaudio -D
