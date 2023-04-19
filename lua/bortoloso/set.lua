-- use line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.showmode = false

-- settings for tabstop, 4 spaces, and convert tabs to spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- vim automatic adjust identation
vim.opt.smartindent = true
vim.opt.smartcase = true

-- no wrap lines, when necessary use :set nowrap OR :set wrap to wrap/unwrap lines
vim.opt.wrap = false

-- settings for undofile and backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir/"
vim.opt.undofile = true

-- settings for search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- settins for colors
vim.opt.termguicolors = true

-- cursor don't came to end of window
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

-- put a highlight on column 80
vim.opt.colorcolumn = "80"

-- colorscheme config
vim.opt.background = "dark"
vim.g.gruvbox_contrast_dark = "soft"
vim.cmd.colorscheme('gruvbox')

-- Show highlight in selectet row
vim.opt.cursorline = true

-- Show character to space and tab
vim.opt.list = true
vim.opt.listchars="space:.,tab:>_"

-- Include a tabline on top of window
vim.opt.showtabline = 2

-- Change de default highlight of visual selection
vim.cmd[[highlight Visual guifg=#1d2021 guibg=#bdae93 gui=none]]

-- Set filetype for Oracle object scripts
vim.filetype.add {
    pattern = {
        ['.*%.FNC'] = 'plsql',
        ['.*%.PRC'] = 'plsql',
        ['.*%.PCK'] = 'plsql',
        ['.*%.TRG'] = 'plsql',
        ['.*%.VW']  = 'plsql',
        ['.*%.SRC'] = 'plsql',
        ['.*%.BAC'] = 'plsql',
        ['.*%.BAS'] = 'plsql',
        ['.*%.ACT'] = 'plsql',
        ['.*%.SQL'] = 'plsql',
        ['.*%.SCR'] = 'plsql',
        ['.*%.fnc'] = 'plsql',
        ['.*%.prc'] = 'plsql',
        ['.*%.pck'] = 'plsql',
        ['.*%.trg'] = 'plsql',
        ['.*%.vw']  = 'plsql',
        ['.*%.src'] = 'plsql',
        ['.*%.bac'] = 'plsql',
        ['.*%.bas'] = 'plsql',
        ['.*%.act'] = 'plsql',
        ['.*%.sql'] = 'plsql',
        ['.*%.scr'] = 'plsql',
    }
}

