# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin
export MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

syncthing --no-browser &

# Start X11 on login
if [[ -z "$DISPLAY" && "$(tty)" = "/dev/tty1" ]]; then
  exec startx
fi
. "$HOME/.cargo/env"
