function decrypt
    if [ $argv ]
       if [ $argv = "-d" ]
        fusermount -u ~/static/Private
      else
        echo "Unkown option $argv"
      end
    else
        set -lx ENCFS6_CONFIG ~/.encfs6.xml
        encfs ~/static/.sync/ ~/static/Private
    end
end

