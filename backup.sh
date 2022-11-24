#! /bin/bash

SOURCE=$1
DEST=$2
DIR_LIST=$3

echo "$SOURCE"
echo "$DEST"

while IFS= read -r line
do
  rsync -av --relative "$SOURCE/./$line" "$DEST"
done < "$DIR_LIST"
