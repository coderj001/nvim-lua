local glb = require('global')
local function bind_option(options)
  for k, v in pairs(options) do
    if v == true or v == false then
      vim.cmd('set ' .. k)
    else
      vim.cmd('set ' .. k .. '=' .. v)
    end
  end
end

local function bind_extra_cmd(options)
    for optionCount=1, #options do
        vim.cmd(options[optionCount])
    end
end

local function load_options()
    local global_local = {
        t_Co = 256;
        number = true;
        relativenumber = true;
        ma = true;
        cursorline = true;
        history = 500; autoread =true;
        so = 7;
        langmenu = 'en';
        wildmode = 'longest,list,full';
        wildmenu = true;
        wildignore = '.git,.hg,.svn,*.aux,*.out,*.toc,*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp,*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg,*.mp3,*.oga,*.ogg,*.wav,*.flac,*.eot,*.otf,*.ttf,*.woff,*.doc,*.pdf,*.cbr,*.cbz,*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb,*.swp,.lock,.DS_Store,._*';
        title = true;
        conceallevel = 2;
        splitright = true;
        splitbelow = true;
        ruler = true;
        hid = true;
        cmdheight = 2;
        ignorecase = true;
        hlsearch = true;
        smartcase = true;
        incsearch = true;
        lazyredraw = true;
        showmatch = true;
        backspace='eol,start,indent';
        mat = 2;
        foldcolumn = 1;
        foldmethod = 'expr';
        foldexpr =  'nvim_treesitter#foldexpr()';
        foldnestmax = 10;
        nofoldenable = true;
        foldlevel = 2;
        exrc = true;
        encoding = 'utf-8';
        ffs = 'unix,dos,mac';
        nobackup = true;
        nowb = true;
        noswapfile = true;
        updatetime = 300;
        termguicolors = true;
    }
    bind_option(global_local)
end

function load_extra_options()
    local options = {
        "filetype plugin on",
        "filetype indent on",
        "cabbr Q q",
        "cabbr Q! q!",
        "cabbr W! w!",
        "cabbr W w",
        "cabbr WA wa",
        "cabbr Wa wa",
        "cabbr Wq wq",
        "cabbr WQ wq",
        "cabbr Qa qa",
        "cabbr QA qa"
    }
    bind_extra_cmd(options)
end

load_options()
load_extra_options()
