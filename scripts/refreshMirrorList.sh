#! /bin/bash
sudo reflector --save /etc/pacman.d/mirrorlist --protocol https --country "United States" --latest 5 --sort age
echo "Mirrorlists refreshed!"