#!/usr/bin/env bash

google_server="https://www.google.com/search?q="
youtube_server="https://www.youtube.com/results?search_query="

function _help() {
  echo \
"Help:
  -h, --help
    Help
  -g, --google
    Search in Google Web Site
  -y, --youtube
    Search in Youtube Web Site
"
}

function _google() {
  [[ "$*" ]] || { echo "Type a search."; exit 1 ;}

  firefox --new-window "${google_server}${*// /+}"
}

function _youtube() {
  [[ "$*" ]] || { echo "Type a search."; exit 1 ;}
  
  firefox --new-window "${youtube_server}${*// /+}"
}

case $1 in
  -h|--help)    shift; _help   ;;
  -g|--google)  shift; _google  "$@";;
  -y|--youtube) shift; _youtube "$@";;
  *) { echo "Not found, type -h to help"; exit 1 ;}              
esac