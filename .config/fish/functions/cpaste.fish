function cpaste
  read -z a
  echo $a | curl -F 'clbin=<-' https://clbin.com
end
