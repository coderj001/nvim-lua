local function bind_option(options)
  for k, v in pairs(options) do
    if v == true or v == false then
      vim.cmd('set ' .. k)
    else
      vim.cmd('set ' .. k .. '=' .. v)
    end
  end
end

local function load_options()
    local global_local = {
        t_Co = 256;
        number = true;
        relativenumber = true;
        ma = true;
        cursorline = true;
        history = 500;
        autoread =true;
        so = 7;
        langmenu = 'en';
        wildmode = 'longest,list,full';
        wildmenu = true;
        wildignore = '.git,.hg,.svn,*.aux,*.out,*.toc,*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp,*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg,*.mp3,*.oga,*.ogg,*.wav,*.flac,*.eot,*.otf,*.ttf,*.woff,*.doc,*.pdf,*.cbr,*.cbz,*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb,*.swp,.lock,.DS_Store,._*';
    }
    bind_option(global_local)
end

load_options()

