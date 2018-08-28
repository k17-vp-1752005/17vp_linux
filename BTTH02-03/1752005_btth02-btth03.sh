#!bin/bash
echo "Hay nhap 1 duong dan thu muc"
read dir
if ![-d $dir]
then
    echo "Khong ton tai duong dan tren"
    exit 0
else
    cd $dir
    rm -f $dir/
    mkdir BTTH
    mkdir BTTL
    mkdir BTTH/BTTH{1,2,3,4,5,6,7,8,9}
    mkdir BTTL/BTTL{1,2,3,4,5,6,7,8,9}
    touch BTT{H,L}/BTT{H,L}{1,2,3,4,5,6,7,8,9}/1752005.sh
    chmod 744 1752005.sh
    ls BTT{H,L}/BTT{H,L}{1,2,3,4,5,6,7,8,9}
    dir=BTT{H,L}/BTT{H,L}{1,2,3,4,5,6,7,8,9}
    file=1752005.sh
    for file in $dir/*
    do
	echo "*/==============================================" >$file
	echo "Ho va ten: Truong Tran Quoc An" >$file
	echo "MSSV: 1752005" >$file
	echo "Ma bai tap: BTTH02" >$file
	echo "*===============================================" >$file
	echo "*/" >$file
    
