#----------------------------------------------------------------
# Zim
#----------------------------------------------------------------

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}

#----------------------------------------------------------------
# User
#----------------------------------------------------------------

# .dotfiles path
export DOTFILES_PATH=${HOME}/.dotfiles

# Load .dotfiles environment
. "${DOTFILES_PATH}/shell/exports.sh"

