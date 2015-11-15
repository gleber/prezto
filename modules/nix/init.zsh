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

# Source .nix-profile if exists
if [ -f ~/.nix-profile/etc/profile.d/nix.sh ]; then
  source ~/.nix-profile/etc/profile.d/nix.sh
fi

# If ghc is installed, ensure NIX_GHC* env vars are set
if [ -e ~/.nix-profile/bin/ghc ]; then
    export NIX_GHC="$HOME/.nix-profile/bin/ghc"
    export NIX_GHCPKG="$HOME/.nix-profile/bin/ghc-pkg"
    export NIX_GHC_DOCDIR="$HOME/.nix-profile/share/doc/ghc/html"
    export NIX_GHC_LIBDIR="$HOME/.nix-profile/lib/ghc-$($NIX_GHC --numeric-version)"
fi
