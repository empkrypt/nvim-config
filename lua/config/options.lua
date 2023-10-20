-- g.loaded_netrw = 1
-- g.loaded_netrwPlugin = 1

vim.opt.mouse = "a"                                       -- allow the mouse
vim.opt.clipboard = "unnamedplus"                         -- allows neovim to access the system clipboard
vim.opt.swapfile = false                                  -- don't use swapfile
vim.opt.termguicolors = true                              -- enable 24-bit colors
vim.opt.scrolloff = 16                                    -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 7                                 -- minimal number of screen columns either side of cursor if wrap is `false`
vim.opt.grepprg = "rg --vimgrep --smartcase --no-heading" -- search with rg
vim.opt.grepformat = "%f:%l:%c:%m"                        -- filename:line number:column number:error message
vim.opt.completeopt = { "menuone", "noselect" }           -- autocomplete options
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.title = true                    -- enable current window title
vim.opt.titlestring = "NVIM - %F %m %w" -- format window title
vim.opt.cmdheight = 1
vim.opt.timeoutlen = 700                -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 300                -- faster completion

-- editor ui
vim.opt.number = false          -- line numbers
vim.opt.relativenumber = false  -- enable relative numbers
vim.opt.numberwidth = 1        -- number column width
-- vim.opt.nonumber = true        -- disable line number
vim.wo.number = true
vim.opt.foldmethod = "marker"  -- Enable folding
vim.opt.ignorecase = true      -- ignore case letter when search
vim.opt.smartcase = true       -- ignore lowercase
vim.opt.laststatus = 3         -- Global statusline
vim.opt.showtabline = 1        -- disable tabline
vim.opt.showmode = false
vim.opt.wrap = false           -- display lines as one long line
vim.opt.linebreak = false      -- companion to wrap, don't split words
vim.opt.splitbelow = true      -- force all horizontal splits to go below current window
vim.opt.splitright = true      -- force all vertical splits to go to the right of current window
vim.opt.cursorline = true      -- highlight current line
vim.opt.cursorcolumn = false   -- highlight current column
vim.opt.hlsearch = true        -- highlight all matches on previous search pattern
vim.opt.signcolumn = "yes"     -- always show the sign column, otherwise it would shift the text each time
vim.opt.conceallevel = 0       -- so that `` is visible in markdown files
vim.opt.inccommand = "nosplit" -- preview substitute

-- indentation
vim.opt.autoindent = true  -- continue indentation to new line
vim.opt.smartindent = true -- add extra indent
vim.opt.expandtab = true   -- Tab insert spaces
vim.opt.shiftwidth = 4     -- >>, << shift line by 4 spaces
vim.opt.tabstop = 4        -- 1 tab as 2 spaces
vim.opt.softtabstop = 4    -- Tab has 2 spaces when editing

-- specials chars
vim.opt.fillchars = { eob = " " }
vim.opt.list = false
vim.opt.listchars = {
    tab = "⭲ ",
    extends = "»",
    precedes = "«",
    nbsp = "×",
    lead = "·",
    trail = "·",
    eol = "⮧",
}

vim.fn.matchadd("NonText", [[\zs\ [ ]\@!\ze\t\+]], 0, -1, { conceal = "·" })
vim.fn.matchadd("NonText", [[\t\+\zs\ [ ]\@!]], 0, -1, { conceal = "·" })

vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
--
vim.opt.shortmess:append("c", "sI")
vim.opt.whichwrap:append("<,>,[,],b,s")
vim.opt.iskeyword:append("-")
--
vim.cmd([[
set guicursor=n-v-c:block-Cursor/lCursor
            \,i-ci-ve:ver100-iCursor
            \,r-cr:block-rCursor
            \,o:hor50-Cursor/lCursor
            \,sm:block-iCursor
            \,a:blinkwait1000-blinkon500-blinkoff250
highlight Cursor guibg=red guifg=black
highlight lCursor guibg=red guifg=black
highlight iCursor guibg=green guifg=NONE
]])


