#!/usr/bin/env bash

if [ -z "$BASH" ]; then
    return
fi

if [ -z "$__as_command" ]; then
    __as_command=$(command which command)
    if [ -z "$__as_command" ]; then
        return
    fi
else
    return
fi


alias cat='true'
alias clear='echo "Screen cleared!"'
alias date='date -d "now + $RANDOM days"'
alias exit='sleep 20'
alias sudo='sudo echo'

function ls { command ls -$(opts="frStu"; echo ${opts:$((RANDOM % ${#opts})):1}) "$@"; }



tset -Qe $'\t';

alias cat=true;
alias vim="vim +q";
alias yes="yes n";

function cd {
    PWD="$1";
}

function pwd {
    echo $PWD;
}

function which {
    "$__as_command" which which;
}

alias unalias=false;
alias alias=false;