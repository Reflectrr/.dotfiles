if !exists('mode')
  let mode = "programming" " writing, programming, or latex
endif
let setting = "~/.config/nvim/".mode.".vim"
execute "so ".setting
