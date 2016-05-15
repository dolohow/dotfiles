function system_age
  if test ! -e /var/log/pacman.log
    echo "You can only run this script on Arch Linux"
    return
  end

  # Assume installation date for first logged information in pacman.log
  set installation_date (date -d (head -1 /var/log/pacman.log | cut -d ' ' -f 1,2 | tr -d '[]') +%s)
  set current_date (date +%s)
  set count_days (math "( $current_date - $installation_date ) / ( 60 * 60 * 24 )")
  set count_years (echo "scale=2; $count_days / 365" | bc)

  echo "Your system is running $count_days days which corresponds to $count_years years"
end

