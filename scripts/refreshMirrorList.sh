#! /bin/bash
sudo reflector --country "United States" --latest 50 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
echo "Mirrorlists refreshed!"
