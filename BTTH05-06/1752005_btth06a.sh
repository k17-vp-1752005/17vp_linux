#!bin/bash

getLegnhtList () {
    echo "So luong so nguyen: $#"
}

displayList () {
    echo "Do dai: $#"
    echo "Cac phan tu: $@"
}

getEvenNumber () {
    i=0
    for num in $*
    do
	if [$((num%2)) -eq 0]
	then
	    echo "$num" >even[$i]
	    i=$((i+1))
	fi
    done
}

getOddNumber () {
    j=0
    for num in $*
    do
	if ![$((num%2)) -eq 0]
	then
	    echo "$num" >odd[$j]
	    j=$((j+1))
	fi
    done
}

getMax () {
    max=0
    for num in $*
    do
	if [$num -gt $max]
	then
	    max=$num
	fi
    done
    echo "Max = $max"
}

getMin () {
    local var=$1
    ${var##' '} >>min
    for num in $*
    do
	if [$num -lt $min]
	then
	    min=$num
	fi
    done
    echo "Min = $min"
}

getValueAt () {
    local pos=$1
    local line=$2
    getLegnhtList $line >>length
    if [$pos -gt $length]
    then
	echo "Error: Pos > Lenghth"
	exit 1
    else
	local i=1
	for num in $line
	do
      	    if [$i -eq $pos]
	    then
		echo "so o vi tri $pos co gia tri la: $num"
	    fi
	    i=$((i+1))
	done
    fi
}

showInfos ()
{
    displayList $*
    getEvenNumbers $*
    getOddNumbers $*
    getMax $*
    getMin $*
    getValueAt $*
}

readtext ()
{
    if test -e $1
    then
	exec 3>$2
	while read line; do
	    showInfos $line >&3
	done <"$1"
	exec 3>&-
    else
	echo "File khong ton tai"
	exit 1
    fi 
}

process ()
{
    local input="$1"
    local output="$2"
    readtext $input $output
}

process $input $output


