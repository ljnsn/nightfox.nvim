if has('nvim')
  let s:p = v:lua.require('nightfox.util.lightline').generate('oxifox')
else
  lua nightfox_vim = require('nightfox.util.lightline').dump('oxifox')
  let s:palette_str = luaeval('nightfox_vim')
  let s:p = eval(s:palette_str)
endif
let g:lightline#colorscheme#oxifox#palette = lightline#colorscheme#fill(s:p)
