function rocketchat --argument-names 'channel' 'markdown'
  if test $markdown
    set full_text  "```$markdown"
  else
    set full_text ""
  end

  while read -l text
    set full_text (string join "\n" $full_text $text)
  end

  curl $ROCKETCHAT_URL/api/v1/chat.postMessage \
    -X POST \
    -H "X-User-Id: $ROCKETCHAT_USER_ID" \
    -H "X-Auth-Token: $ROCKETCHAT_TOKEN"\
    -H "Content-type: application/json" \
    --data-raw "{
       \"channel\": \"$channel\", \"text\": \"$full_text\"
    }"
end
