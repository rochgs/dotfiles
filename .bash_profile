[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
# Añade ejecutables de rbenv al path:
export PATH="$PATH:/home/roch/.rbenv/bin"
# Load rbenv automatically:
eval "$(rbenv init -)"
