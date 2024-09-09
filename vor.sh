#!/bin/bash

echo "Filename: $1"
echo "Pages: $2"
echo "URL basename: $3"

workdir="$1_dir"

mkdir $workdir 
echo "Created folder $workdir" 

for pageNum in $(seq 1 $2)
do
    curl -kL -o "$workdir/$pageNum.jpg" "$3/$pageNum"
done

cd $workdir
list=$(ls)

bad=$(echo $2 | wc -c) 
maxlen=$(($bad-1))

for file in $list
do
    symbols=$(echo $file | wc -c) 
    len=$(($symbols - 5))
    to_add=$(($maxlen - $len))
    prefix=$(head -c $to_add < /dev/zero | tr '\0' '\60')
    newname=$prefix$file
    mv $file $newname    
done

img2pdf *.jpg --output $1.pdf

echo "Saved to $workdir/$1.pdf ($(du -k "$1.pdf" | cut -f1) kB)"
