# .bash_profile


if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# History Size
export HISTSIZE=10000
export HISTFILESIZE=10000

# Colour Definition
C1="\[\033[29;13;1m\]"
EC="\[\033[0m\]"
C2="\[\033[49;31;1m\]"

# Short commands
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

mkcd () {
    mkdir -p "$*"
    cd "$*"
}

cdl () {
    cd "$*"
    ls -la
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
export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')

#Less pipe with colour
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

# Iterm bash integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

 
