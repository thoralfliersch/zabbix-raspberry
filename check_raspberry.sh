#!/bin/sh
case "$1" in
    temp)
        vcgencmd measure_temp | cut -d "=" -f 2 | cut -d "'" -f 1
        ;;
    voltage)
        vcgencmd measure_volts | cut -d "=" -f 2 | tr -d 'V'
        ;;
    clockspeed)
        echo $(( $(vcgencmd measure_clock arm | cut -d "=" -f 2) / 1000))
        ;;
    *)
        echo "Usage: $N {temp|voltage|clockspeed}" >&2
esac
exit 0
