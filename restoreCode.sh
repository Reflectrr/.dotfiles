#!/bin/sh
[ ! -d "$HOME/Coding/" ] && mkdir ~/Coding/ 
cd ~/Coding/
REPOS=('VCFilms-Website' 'VCFilms-Backend')
for REPO in "${REPOS[@]}"; do
  [ ! -d ~/Coding/$REPO ] && git clone git@github.com:zzhou02/$REPO.git;
done
