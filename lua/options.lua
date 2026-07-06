require "nvchad.options"

-- add yours here!

local opt = vim.opt

-- Base Configuration Options
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = false

if vim.fn.has("wsl") == 1 then
  -- We use the absolute path so Neovim never lags searching for the executable
  local win32yank_path = "/usr/bin/win32yank.exe"

  vim.g.clipboard = {
    name = "wsl-async-fast",
    copy = {
      ["+"] = { win32yank_path, "-i", "--crlf" },
      ["*"] = { win32yank_path, "-i", "--crlf" },
    },
    paste = {
      ["+"] = { win32yank_path, "-o", "--lf" },
      ["*"] = { win32yank_path, "-o", "--lf" },
    },
    cache_enabled = 1, -- Caches clipboard states to completely protect typing speed
  }
end

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
