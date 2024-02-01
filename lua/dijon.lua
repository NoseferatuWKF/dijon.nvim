local M = {}

M.setup = function(opts)
  opts = opts or {}

  local key_map = opts.key_map or "<leader>on"

  local win_id

  vim.keymap.set("n", key_map, function()
    if win_id and vim.api.nvim_win_is_valid(win_id) then
      return
    end

    local core = require("core")

    win_id = core.open_win(opts)
  end, { desc = "dijon.nvim" })
end

return M
