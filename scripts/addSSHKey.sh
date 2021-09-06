#!/bin/sh
ssh-keygen -t ed25519 -C "bobbyzhou22@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
