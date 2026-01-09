#!/bin/sh

# Run this script before working on the modpack to mount 'instance_directory' into the 'modpack' subdirectory,
# this is necessary to commit modpack files to the repo despite them existing at a different filesystem location

instance_directory="/home/georgehaldane/.local/share/PrismLauncher/instances/heavens_descent"

mount --bind "$instance_directory" "./modpack"