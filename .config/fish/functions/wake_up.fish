function wake_up --argument-names 'minutes'
  if test -n $minutes
    set minutes 26
    printf "Using default %s minutes sleep time\n" $minutes
  end
  amixer -c 0 set Master 10 > /dev/null
  sleep $minutes\m
  amixer -c 0 set Master 50 > /dev/null
  sleep 1s
  amixer -c 0 set Master 10 > /dev/null
end
