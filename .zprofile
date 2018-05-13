export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/kenta_nakajima/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/kenta_nakajima/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/kenta_nakajima/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/kenta_nakajima/Downloads/google-cloud-sdk/completion.bash.inc'; fi
export PATH="${PATH}:${HOME}/go/bin:/usr/local/go/bin"
export GOPATH="${HOME}/go"
export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.pyenv/shims:${HOME}/.pyenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export SCALA_HOME=/usr/local/share/scala
export PATH=$PATH:${SCALA_HOME}/bin

export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PGDATA=/usr/local/var/postgres

export PATH="/usr/local/opt/sqlite/bin:$PATH"
# see https://github.com/Homebrew/homebrew-core/issues/17938
export PATH="/usr/local/opt/llvm/bin:$PATH"
