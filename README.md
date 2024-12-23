# Dijon.nvim

![Dijon]( dijon.jpg )

Just like dijon mustard some people might like it, some people don't. This plugin adds a simple addition to neovim to integrate with obsidian notes.
## Motivation

Moving between [Obsidian](https://obsidian.md) and Neovim to create/update daily notes and to copy from Neovim buffer and then paste into [Obsidian](https://obsidian.md) is a pain.

## What it does
- create/update [Obsidian](https://obsidian.md) notes 

## What it does not do
- preview Markdown files
- full blown integration

## Setup

>example here is using lazy

```lua
    {
        "NoseferatuWKF/dijon.nvim",
        {
            opts = {
                -- vault is the only requirement to setup
                vault = "/path/to/vault",
                -- defaults
                -- if format is different than what obsidian default gives you
                -- you need to set it up here with a lua compatible format
                -- format = os.date("%F, d"),
                -- title = " Dijon "
                -- key_map = "<leader>on",
                -- width = math.ceil(vim.o.columns / 2),
                -- height = math.ceil((vim.o.lines - vim.o.cmdheight) / 2),
                -- border = "rounded",
            }
        }
    }
    
```
