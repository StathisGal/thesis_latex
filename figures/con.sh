#!/bin/bash

# for filename in ${pwd}; do
#     echo $filename
# done

for filename in $(ls .)
do
    echo $filename
    convert $filename -colorspace Gray $filename
done;
