C1="\[\033[29;13;1m\]"
EC="\[\033[0m\]"
C2="\[\033[49;31;1m\]"

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#Terminal Colour
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\\[\033[m\]\$ [$C1\`todo-getsize\`$EC] $C2\W $EC>\$(git_branch) \[\033[00m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# MySQL
export PATH=${PATH}:/usr/local/mysql/bin

# Python3 
export PATH=${PATH}:/usr/local/Cellar/python3/3.6.3/bin

#Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

#Less pipe with colour
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

# Short commands
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

cdl () {
    cd "$*"
    ls -la
}

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
alias movewindow='xdotool getactivewindow windowmove 1408 1072'
alias brackets='/Applications/Brackets.app/Contents/MacOS/Brackets'
alias whatsmyexternalip='curl ipecho.net/plain; echo'
#alias whatsmyip="ifconfig en0 | awk '{ print $2}' | grep -E -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}'"
alias whatsmyip='ipconfig getifaddr en0'
alias clipboard='~/.scripts/clipboard.sh'
alias cdbisw='cd /Users/jasrodis/Projects/Cern/bisw-portal-tests/bisw-portal-simple-auth'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

 
