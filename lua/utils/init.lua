local M = {}

local config = {}

local upsert_notes = function()
  vim.cmd.e(("%s/%s/%s.%s"):format(config.vault, config.folder, config.format, "md"))
end

local set_template = function()
  vim.cmd.read(("%s/%s.%s"):format(config.vault, config.template, "md"))
end

M.parse_config = function(vault, format)
  local path = ("%s/%s"):format(vault, ".obsidian/daily-notes.json")
  local file = vim.fn.readfile(path)
  config = vim.fn.json_decode(file)
  config.vault = vault
  -- compatibility
  config.format = format
end

M.get_config = function()
  return config
end

M.set_notes = function()
  upsert_notes()
  set_template()
end

return M;
