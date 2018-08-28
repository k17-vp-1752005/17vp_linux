#!bin/bash


showHelp () {
    echo "Usage: ./1752005_btth04.sh [-h|--help] [-a|--all] [-f|--find filename] [-c|--count
filename] [dir]"
}

while [ $# -ge 1 ] ; do

    case $1 in
	-h|--help) showHelp
	    shift
	    ;;
	-a|--all) flag_all=true
	    shift
	    ;;
	-f|--find) flag_find=true
	    filename="$1"
	    shift
	    ;;
	-c|--count) flag_countline=true
	    shift
	    ;;
	*) echo "Error"
	    exit 1
    esac
    done

showAllFiles ()
{
    if [ -d $1 ]
    then
	files="$1/*"
	for file in $files
	do
	    echo ${file##*/}
	done    else
	echo "Khong ton tai"
	exit 1
    fi	
}

findFile () 
{
    dir="$1"
    filename="$2"
    for d in $dir/* ; do
	fname=${d##*/}
	if [ "$fname"="$filename" ] ; then
	    echo "$d"
	fi
    done
}

countLines ()
{
    local dir="$1"
    if ! [ -f $dir ] ; then
	echo "$dir khong ton tai."
	exit 1
    elif ! [ -r $dir ] ; then
	echo "khong co quyen read, hay them quyen"
    else
	echo "${dir##*/}"
	echo $( wc -l < $dir)
    fi
}

showInfos ()
{
    if $flag_countLine; then 
       $ countLines $1
    fi
    if $flag_find; then
       $ findFile $1 $2
    fi
    if $flag_all; then
	echo $ showAllFiles $1
    fi
}

showInfos
