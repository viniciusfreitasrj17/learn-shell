#!/usr/bin/env bash

# Constants ####################################################################
# 3gp, aac, flv, m4a, mp3, mp4, ogg, wav, webm
format_audio='mp3'
audio_quality='320K'
format='22'
output='%(title)s.%(ext)s'

# Tests ########################################################################
[[ "$UID" -eq 0 ]] && { echo "Not supposed to be run as root. Sorry"; exit 1 ;}
[[ $(type -P yt-dlp) ]] || { echo "No have yt-dlp instaled..."; exit 1 ;}
[[ $(type -P ffmpeg) ]] || { echo "No have ffmpeg instaled..."; exit 1 ;}
[[ $(type -P ffprobe) ]] || { echo "No have ffprobe instaled..."; exit 1 ;}

# Core ########################################################################
function _audio() {
  echo -e "Download Audio \n"
  sleep 1s

  yt-dlp \
    --compat-options embed-thumbnail-atomicparsley \
    --format "$format" \
    --extract-audio \
    --audio-format "$format_audio" \
    --audio-quality "$audio_quality" \
    --output "$output" \
    "$1"
}

function _movie() {
  echo -e "Download Movie \n"
  sleep 1s

  yt-dlp \
    --compat-options embed-thumbnail-atomicparsley \
    --format "$format" \
    --output "$output" \
    "$1"
}

function _list_audio() {
  echo -e "Download List Audio \n"
  sleep 1s

  yt-dlp \
    --compat-options embed-thumbnail-atomicparsley \
    --format "$format" \
    --extract-audio \
    --audio-format "$format_audio" \
    --audio-quality "$audio_quality" \
    --output "$output" \
    --yes-playlist \
    "$1"
}

function _list_movie() {
  echo -e "Download List Movie \n"
  sleep 1s
  echo "$1"
  yt-dlp \
    --compat-options embed-thumbnail-atomicparsley \
    --format "$format" \
    --output "$output" \
    --yes-playlist \
    "$1"
}

function _channel() {
  echo -e "Download Channel \n"
  sleep 1s

  yt-dlp \
    --compat-options embed-thumbnail-atomicparsley \
    --format "$format" \
    --output "$output" \
    "$1"
}

function _help() {
  echo \
  "SYNOPSIS
      youtube-download OPTIONS URL

OPTIONS:
    -a, --audio
        Download audio

    -m, --movie
        Download movie
        
    -la, --list-audio
        Download audios list
        
    -lm, --list-movie
        Download movie list
        
    -c, --channel
        Download whole channel
        
    -h, --help
        Help"
}

case $1 in
  -a|--audio) _audio "$2" ;;
  -m|--movie) _movie "$2" ;;
  -la|--list-audio) _list_audio "$2" ;;
  -lm|--list-movie) _list_movie "$2" ;;
  -c|--channel) _channel "$2" ;;
  -h|--help) _help "$2" ;;
  *) { echo "Invalid options, use option -h or --help to more details"; exit 1 ;} ;;
esac