function uksm_profit
  if not test -d /sys/kernel/mm/uksm
    echo "UKSM not installed"
    return
  end
  set pages (cat /sys/kernel/mm/uksm/pages_sharing)
  set zero_pages (cat /proc/meminfo | grep KsmZero | awk '{print $2}')

  set total_in_MB (echo "scale=2; $pages*4/1024 + $zero_pages/1024" | bc)

  printf "Saved %s MB\n" $total_in_MB
end

