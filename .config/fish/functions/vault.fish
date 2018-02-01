function vault
  if contains -- -d $argv
    fusermount -u ~/static/Private
  else
    set -lx ENCFS6_CONFIG ~/static/.vaults/sync.enc/.encfs6.xml
    encfs ~/static/.vaults/sync.enc ~/static/Vaults/sync/
  end
end

