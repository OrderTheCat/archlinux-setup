#!/bin/bash

# Move kitty config files
mv ~/Downloads/archlinux-setup/kitty ~/.config/ &&

# Move bash config files
mv ~/Downloads/archlinux-setup/bash/.bashrc ~/ && 

# Finally, delete the cloned folder
rm -rf ~/Downloads/archlinux-setup &&
echo "Done"
