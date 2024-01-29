local M = {}

M.setup = function(opts)
    opts = opts or {}

    local key_map = opts.key_map or "<leader>on"

    vim.keymap.set("n", "<leader>on", function()
      local utils = require("utils")
      
      local format = opts.format or os.date("%F", d)
      local title = opts.title or " Obsidian Notes "
      local border = opts.border or "rounded"
      local width = opts.width or math.floor(vim.api.nvim_win_get_width(0) / 2)
      local height = opts.height or math.floor(vim.api.nvim_win_get_height(0) / 2)

      utils.parse_config(opts.vault, format)

      local buf = vim.api.nvim_create_buf(nil, nil)

      vim.api.nvim_open_win(buf, true, {
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

      utils.set_notes()

    end, { desc = "dijon.nvim" })
end

return M
