# Dijon.nvim

![Dijon]( dijon.jpg )

Just like dijon mustard some people might like it, some people won't. This plugin adds a simple addition to neovim to integrate with obsidian notes.

## Motivation

Moving between Obsidian and Neovim to create/update daily notes and to copy from Neovim buffer to then paste into Obsidian is a pain.

## What it does
- create/update Obsidian notes in an existing directory/path

## What it does not do
- sync plugin path to obsidian notes path
- preview Markdown files
- full blown integration

## Setup

>example here is using lazy

```lua
    {
        "Noseferatu/dijon.nvim",
        {
            opts = {
                -- path is important to setup
                path = "/path/to/vault/notes-directory",
                -- defaults
                -- key_map = "<leader>on",
                -- width = math.floor(vim.api.nvim_win_get_width(0) / 2),
                -- height = math.floor(vim.api.nvim_win_get_height(0) / 2),
                -- note_format = os.date("%F, d"),
                -- border = "rounded",
            }
        }
    }
    
```
