" configurations v6
function Cfg(fn)
  exec 'source ' . stdpath('config') . '/Cfg/' . a:fn
endfunction

call Cfg('plugins.vim')
call Cfg('general.vim')
call Cfg('coc.vim')
call Cfg('rainbow.vim')
call Cfg('Haskell.vim')
