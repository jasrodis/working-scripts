#!/bin/bash

#Alias commands
alias ll='ls -la'
alias ls='ls -GFh'
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app/'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysql.server='/usr/local/mysql/support-files/mysql.server'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias ssxvm='ssh -C -Y -l irodis cwe-513-vol245'
alias chrome='open /Applications/Google\ Chrome.app/'
alias ssx='ssh -C -X -c blowfish-cbc,arcfour '
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias ssxb='ssh -Y -l irodis bdidev2'
alias ssxvm='ssh -Y irodis@cwe-513-vol245'
alias ssxvm2='ssh -Y irodis@cwe-513-vol806'
alias movewindow='xdotool getactivewindow windowmove 1408 1072'
alias brackets='/Applications/Brackets.app/Contents/MacOS/Brackets'
alias whatsmyexternalip='curl ipecho.net/plain; echo'
#alias whatsmyip="ifconfig en0 | awk '{ print $2}' | grep -E -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}'"
alias whatsmyip='ipconfig getifaddr en0'
alias clipboard='~/.scripts/clipboard.sh'
alias cdbisw='cd /Users/jasrodis/Projects/Cern/bisw-portal-tests/bisw-portal-simple-auth'
alias tunnelvm='ssh -D 8123 -C -N irodis@cwe-513-vol245'
