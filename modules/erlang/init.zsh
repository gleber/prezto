#
# Source current kerl-installed erlang from /opt/erlang/current.
#
# Authors:
#   Gleb Peregud <gleber.p@gmail.com>
#

# Source .nix-profile if exists
if [ -f /opt/erlang/current/activate ]; then
  source /opt/erlang/current/activate
fi
