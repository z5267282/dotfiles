. aliasrc
. functionrc
. envrc

[ -f ~/.secrets ] && . ~/.secrets

setopt nullglob

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunny/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunny/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/completion.zsh.inc'; fi

true
