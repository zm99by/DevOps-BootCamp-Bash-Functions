#!/bin/bash
set -x
function pow { rez=$(($1**$2)); echo $rez; }
function shortest {
arr=("$@")
shot_str=${#arr[0]}
for (( i = 0; i < $#; i++ )) ; do
        if (( ${#arr[$i]} == $shot_str ))
            then
                rez+=(${arr[$i]})
        elif
            (( ${#arr[$i]} < $shot_str ))
            then
                shot_str=${#arr[$i]}
                rez=(); rez+=(${arr[$i]})
        fi
done
    echo ${rez[*]}
}
function print_log (){
    echo `date +"[%m-%d-%y %H:%M]"` $@
}