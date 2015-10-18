set -x TERM          screen-256color
set -x _JAVA_OPTIONS -Dawt.useSystemAAFontSettings=setting
set -x ANDROID_HOME  ~/.android/sdk
set -x GOPATH        ~/go

set -x PATH          $PATH \
                     ~/.gem/ruby/2.2.0/bin \
                     $GOPATH/bin

alias studia         "cd ~/static/Drive/studia"
alias nethogs        "nethogs enp4s0"

source               .servers
source               .work
