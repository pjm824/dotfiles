# pyenv
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init - --no-rehash zsh)"
eval "$(pyenv virtualenv-init -)"
