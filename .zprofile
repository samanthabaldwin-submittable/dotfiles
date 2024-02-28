set -o vi
bindkey '^R' history-incremental-search-backward
export EDITOR=nvim

eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1
eval `keychain --eval id_ed25519`

alias cds="cd ~/src"
alias cdk="cd ~/src/k8s"
alias k="kubectl"
alias kl="k logs"
alias kbu="kustomize build"

kygl() { kubectl get -o yaml "$@" | yq -C | less -R }
kyg() { kubectl get -o yaml "$@" | yq }

alias ea="env | grep AWS_"

aws_profiles() { grep '^\[' <~/.aws/config | cut -d' ' -f2 | tr -d ']' }
aa() { export "AWS_PROFILE=$(aws_profiles | fzf)" }

alias kr="/Users/samanthabaldwin/src/assetnote/kiterunner/dist/kr"
alias vim="nvim"
alias gfrp="git fetch origin main:main && git rebase main && git push -f"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH
