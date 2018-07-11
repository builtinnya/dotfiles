# ======================================================================
# Zsh Linux-specific settings
# ======================================================================

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# ======================================================================
# Aliases
# ======================================================================

# Aptitude
alias apt="aptitude"
alias au="sudo aptitude update"
alias aug="sudo aptitude update && sudo aptitude upgrade"
alias ai="sudo aptitude install"
alias af="sudo aptitude update && aptitude search"

# Open a thing by appropriate application
alias o="xdg-open"
