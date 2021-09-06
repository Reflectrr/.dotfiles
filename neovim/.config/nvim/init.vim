if !exists('mode')
  let mode = "programming" " writing or programming
endif
let setting = "~/.config/nvim/".mode.".vim"
execute "so ".setting
