function slack --argument-names 'channel'
  read -z text
  curl "https://slack.com/api/chat.postMessage?token=$SLACK_TOKEN&channel=$channel&as_user=true" \
    -d "text=$text"
end
