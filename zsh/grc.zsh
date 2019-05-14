# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  #source `brew --prefix`/etc/grc.bashrc  
  # hardcoding path cause brew --prefix takes awhile
  source /usr/local/etc/grc.bashrc
fi
