#! bin/bash
# Ho và ten : Truong Tran Quoc An
# MSSV : 1752005
# Ten bai tap : BTTH01

#3.2
echo "Hello world!"
#3.4
MESSAGE="Hello world"
echo $MESSAGE
#3.5
echo"Hay nhap 1 so nguyen bat ki"
read num

if [$num -gt 0]
then
    echo "$num la so duong"
fi

if [$num -lt 0]
then
    echo "$num la so am"
fi

if [$num -eq 0]
then
    echo "$num la 0"
fi
#3.6
echo"Hay nhap 1 so nguyen bat ki"
read num
if [expr $num % 2 -eq 0]
then
    echo "$num la so chan"
else
    echo "$num la so le"
fi 
#3.7
echo"Hay nhap 1 so nguyen bat ki"
read num
i=0
while [$i -le $num]
do
    echo "$i"
    i=expr $i + 1
done

