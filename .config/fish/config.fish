set -x EDITOR        vim
set -x _JAVA_OPTIONS -Dawt.useSystemAAFontSettings=setting
set -x ANDROID_HOME  ~/.android/sdk

set -x SSH_AUTH_SOCK ~/.ssh/agent.sock

fish_add_path ~/go/bin

source               .servers
source               .work
