#!/bin/sh
for i in $(find . -not -iname "thumb_*" -iname "*.jpg" -o -iname "*.png" | sed 's#.*/##')
do echo "Processing image : $i";
convert -thumbnail 512 $i thumb_$i
done
