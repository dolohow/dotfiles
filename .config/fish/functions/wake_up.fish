function wake_up
    amixer -c 0 set Master 10 > /dev/null
    sleep $argv\m
    amixer -c 0 set Master 50 > /dev/null
    sleep 1s
    amixer -c 0 set Master 10 > /dev/null
end
