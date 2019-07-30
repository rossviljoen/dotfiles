#!/user/bin/env bash

# COMPLETELY UNTESTED, MAY NOT WORK AT ALL

# Get repository root
RepoRoot="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Generate Default Configs
nixos-generate-config --root /mnt

# Get Desired Machine Configuration
echo "The following machine profiles were found; select one:"
select machine in "${RepoRoot}/nixos/machines/*/"; do break; done

# Link configuration.nix
if [ -e "${machine}/configuration.nix" ]; then
    ln -sf "${machine}/configuration.nix" /mnt/etc/nixos/configuration.nix
fi

# Link hardware_configuration.nix
if [ -e "${machine}/hardware_configuration.nix" ]; then
    ln -sf "${machine}/hardware_configuration.nix" /mnt/etc/nixos/hardware_configuration.nix
fi
