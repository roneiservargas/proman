#! /bin/sh

NAME="$1"
DATE="$(date +"%Y-%m-%d")"
FILE="${DATE}_${NAME}.md"

if [ ! -f "$FILE" ]; then
    echo "# ${NAME}\n" > $FILE
fi

vi + $FILE
