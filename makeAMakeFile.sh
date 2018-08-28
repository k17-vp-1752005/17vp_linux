#! bin/bash
#BTTHtuan07
#mymakeAMakeFilefunction

$ makeAMakeFile ()
{
    echo "Nhap ten file thuc thi dau ra"
    read n
    echo "Co bao nhieu file .c ban muon nhap"
    read s
    i=0
    echo "Hay nhap danh sach file .c cua ban"
    while [i -get 0] -a [i -let s]
    do
	read file[i]
	i=$((i+1))
    done
    #tach duoi .c
    i=0
    echo "Hay nhap danh sach file .c cua ban"
    while [i -get 0] -a [i -let s]
    do
	echo ${file[i]/.c} > file2[i]
	i=$((i+1))
    done
    #target .o
    echo "target .o: "
    i=0
    while test [i -ge 0] -a [i -le s]
    do
	echo "$file2[i].o"
	i=$((i+1))
    done

    #target all     
    echo "target all: "
    #.c
    i=0
    while test [i -ge 0] -a [i -le s]
    do
	echo "$file[i]"
	i=$((i+1))
    done
    #.o
    i=0
    while test [i -ge 0] -a [i -le s]
    do
	echo "$file2[i].o"
	i=$((i+1))
    done
    
    #target clean
    echo "target clean: "
     i=0
    while test [i -ge 0] -a [i -le s]
    do
	echo "$file2[i].o"
	i=$((i+1))
    done
    
    #target depend
    echo "target depend: "
    i=0
    while test [i -ge 0] -a [i -le s]
    do
	echo "$file[i]"
	i=$((i+1))
    done
}
