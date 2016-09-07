function vault
  if contains -- -d $argv
    fusermount -u ~/static/Private
  else
    set -lx ENCFS6_CONFIG ~/.encfs6.xml
    encfs ~/static/.sync/ ~/static/Private
  end
end

