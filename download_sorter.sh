#!/bin/sh
for file in "$@"; do
    filename=${file##*/}

    while IFS= read -r line; do
        IFS=" " read -r -a keyStrings <<< "$line"
        moveDest=${keyStrings[@]:(-1)}
        unset "keyStrings[${#keyStrings[@]}-1]"

        for keyStr in "${keyStrings[@]}"; do
            if [[ $filename == *"$keyStr"* ]]; then
                mv $file $moveDest$filename
                break 2
            fi
        done
    done < ~/.download_sorter/key
done
