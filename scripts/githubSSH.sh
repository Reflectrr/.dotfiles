#! /bin/bash
# When https protocol is no longer supported by Github, use pacman to install chromium and sway and try to copy the public key into the github account. 
ssh-keygen -t ed25519 -C "bobbyzhou22@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo -e "\nNew SSH key generated!\nNow copy ~/.ssh/id_ed25519.pub and add it to the Github account."
