function! Caniuse()
  let s:line = getline(".")
  let s:css = substitute(substitute(substitute(getline("."), '^ *', "", "g" ), ':.*$', "", "g" ), '^-webkit-\|-moz-\|-ms-\|-o-\|', "", "g" )
  echo s:line
  echo s:css
  if s:css != ""
    exec "!open \"http://caniuse.com/\\#search=" . s:css . "\""
  else
    echo "No CSS found in line."
  endif
endfunction

map <Leader>w :call Caniuse()<CR>
