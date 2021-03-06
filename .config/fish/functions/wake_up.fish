function wake_up --argument-names 'minutes'
  if test -n $minutes
    set minutes 26
    printf "Using default %s minutes sleep time\n" $minutes
  end
  amixer -D pulse sset Master 10% > /dev/null
  sleep $minutes\m
  amixer -D pulse sset Master 50% > /dev/null
  sleep 1s
  amixer -D pulse sset Master 10% > /dev/null
end
