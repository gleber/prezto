#
# Adds .nix-profile zsh site-functions to fpath.
#
# Authors:
#   Gleb Peregud <gleber.p@gmail.com>
#

# Return if requirements are not found.
if [[ "$TERM" == 'dumb' ]]; then
  return 1
fi

# Add zsh-completions to $fpath.
fpath=($(find -L .nix-profile/ -iname site-functions -exec realpath {} \;) $fpath)