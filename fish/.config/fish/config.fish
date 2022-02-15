# Environment variables
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x PATH $PATH ~/.dotfiles/scripts ~/.local/bin
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/lib/
set -x EDITOR $EDITOR nvim
set -g theme_color_scheme gruvbox

# Abbreviations
if status --is-interactive
    abbr --add --global ga git add .
    abbr --add --global gc git commit -m
    abbr --add --global gg "git add . && git commit -m \"automated message\" && git push origin master"
    abbr --add --global gs git status
    abbr --add --global gl git log
    abbr --add --global gpod git push origin dev
    abbr --add --global gpom git push origin master
    abbr --add --global gfom git fetch origin master
    abbr --add --global gphm git push heroku master
    abbr --add --global ls ls -la
    abbr --add --global treea tree -a
    abbr --add --global q exit
    abbr --add --global c clear
    abbr --add --global ns npm start
    abbr --add --global nrd npm run dev
    abbr --add --global vimw 'nvim --cmd "let mode=\'writing\'"'
    abbr --add --global vimt 'nvim --cmd "let mode=\'latex\'"'
    abbr --add --global vim nvim
    abbr --add --global ews ssh zijunz6@linux.ews.illinois.edu
    abbr --add --global vpn /opt/cisco/anyconnect/bin/vpnui
    abbr --add --global aws ssh -i ~/EC2Tutorial.pem ec2-user@
    abbr --add --global as lc3as
    abbr --add --global sim lc3sim-tk
end
