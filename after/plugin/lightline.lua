vim.g.lightline = {
  colorscheme = 'wombat',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } ,
            right = { { 'lineinfo'} ,{'percent'},{'fileformat','fileencoding','filetype','sessionname'} } },
  component_function = { gitbranch = 'FugitiveHead', sessionname = 'SessionName' },
}

-- This function return the session name to use in statusbar
-- probably not the best way(using vim function), but it works for now
vim.api.nvim_exec([[
function! SessionName()
  return fnamemodify(v:this_session, ':t')
endfunction
]], false)
