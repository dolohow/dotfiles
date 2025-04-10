set -x EDITOR        vim

set -x SSH_AUTH_SOCK ~/.ssh/agent.sock

fish_add_path ~/go/bin

zoxide init fish | source
source               .work
