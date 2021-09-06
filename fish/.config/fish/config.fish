# Environment variables
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x PATH $PATH ~/.dotfiles/scripts
set -g theme_color_scheme gruvbox

# Abbreviations
if status --is-interactive
    abbr --add --global ga git add .
    abbr --add --global gc git commit -m
    abbr --add --global gs git status
    abbr --add --global gl git log
    abbr --add --global gpod git push origin dev
    abbr --add --global gpom git push origin main
    abbr --add --global gphm git push heroku master
    abbr --add --global ls ls -la
    abbr --add --global treea tree -a
    abbr --add --global q exit
    abbr --add --global c clear
    abbr --add --global ns npm start
    abbr --add --global nrd npm run dev
    abbr --add --global vimw 'nvim --cmd "let mode=\'writing\'"'
    abbr --add --global vim nvim
    abbr --add --global sshews ssh zijunz6@linux.ews.illinois.edu
end
