#!/bin/sh
case "$1" in
    temp)
        # check core temperatur in celsius
        vcgencmd measure_temp | cut -d "=" -f 2 | cut -d "'" -f 1
        ;;
    *)
        echo "Usage: $N {temp}" >&2
esac
exit 0
