local M = {}

M.open_win = function(opts)
  local utils = require("utils")

  local format = opts.format or os.date("%F", d)
  local title = opts.title or " Obsidian Notes "
  local border = opts.border or "rounded"
  local width = opts.width or math.ceil(vim.o.columns / 2)
  local height = opts.height or math.ceil((vim.o.lines - vim.o.cmdheight) / 2)

  utils.parse_config(opts.vault, format)

  local buf = vim.api.nvim_create_buf(nil, nil)

  win_id = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    row = height / 2,
    col = width / 2,
    width = width,
    height = height,
    title = title,
    title_pos = "center",
    border = border,
    style = "minimal" 
  })

  local win_opts = {
    number = true,
    relativenumber = true,
    wrap = false,
    spell = false,
    foldenable = false,
    signcolumn = "no",
    colorcolumn = "",
    cursorline = true,
  }

  -- window options
  for key, value in pairs(win_opts) do
    vim.api.nvim_win_set_option(win_id, key, value)
  end

  utils.set_notes()

  vim.api.nvim_create_autocmd({"WinClosed"}, {
    pattern = "*",
    callback = function()
      if buf and vim.api.nvim_buf_is_valid(buf) then
        vim.api.nvim_buf_delete(buf, {force = true})
      end
    end
  })

  return win_id
end

return M
