#! bin/bash

input1="$1"
output1="$2"

Countwd () {
    echo "So tu: $#"
}

List () {
    for i in $*
    do
	echo "$i"
    done
}

count=0
Looptime () {
   a ="b"
   for i in $*
   do
       if [[ $i = $a ]]
       then
	   count=$((count+1))
       fi
    done
   echo "So lan lap: $count"
}

Allfunc () {
    Countwd $*
    List $*
    Looptime $*
}

readfile () {
    exec 3>|$2
    while read line
    do
	Allfunc $line >&3
    done <"$1"
    exec 3>&-
    
}

process () {
    local input1="$1"
    local output1="$2"
    readfile $input1 $output1
}

process $input1 $output1
