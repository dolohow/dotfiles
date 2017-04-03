set -x TERM          screen-256color
set -x _JAVA_OPTIONS -Dawt.useSystemAAFontSettings=setting
set -x ANDROID_HOME  ~/.android/sdk

set -x PATH          $PATH

set -x SSH_AUTH_SOCK ~/.ssh/agent.sock

source               .servers
source               .work
