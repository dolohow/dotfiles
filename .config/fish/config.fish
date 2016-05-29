set -x TERM          screen-256color
set -x _JAVA_OPTIONS -Dawt.useSystemAAFontSettings=setting
set -x ANDROID_HOME  ~/.android/sdk
set -x GOPATH        ~/go

set -x PATH          $PATH

set -x SSH_AUTH_SOCK ~/.ssh/agent.sock

alias studia         "cd ~/static/Drive/studia"
alias nethogs        "nethogs enp4s0"

source               .servers
source               .work
