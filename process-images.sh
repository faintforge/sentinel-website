#!/usr/bin/env bash

convert() {
    input_file=$1
    output_file=$2
    size=$3
    magick $input_file -scale $size -size $size -quality 50 $output_file
}

extensions=("jpg" "avif" "webp")
sizes=("100%" "50%" "33%")
images=(
    "img/original/congrats.jpg"
    "img/original/yay.jpg"
    "img/original/thumbs-up.jpg"
    "img/original/hero.jpg"
)

mkdir -p img/optimized/

for ext in ${extensions[@]}; do
    for size in ${sizes[@]}; do
        for img in ${images[@]}; do
            name=$(basename $img)
            output="img/optimized/${name%.*}-${size%\%}.${ext}"
            echo "Processing $img into $output..."
            convert $img $output $size
        done
    done
done
