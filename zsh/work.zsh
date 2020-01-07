
# pyenv
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export PYENV_VERSION=3.6.5
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init - --no-rehash zsh)"
#eval "$(pyenv virtualenv-init -)"

# java versions
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"


# add airflow to pythonpath
export PYTHONPATH="~/projects/airflow/utils:$PYTHONPATH"

# airflow
#export AIRFLOW_HOME=~/projects/airflow
export AIRFLOW__CORE__LOG_FILENAME_TEMPLATE="{{ ti.dag_id }}.log"
