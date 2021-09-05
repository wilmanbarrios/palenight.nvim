# palenight.nvim

A port of [Material Palenight](https://material-theme.site/) colorscheme for Neovim written in Lua

Palenight.nvim is a fast and modern colorscheme that supports the new Neovim features like builtin LSP and [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

![PHP example](https://user-images.githubusercontent.com/20175215/132113331-50149c0c-19be-4d51-95b4-4890b3d3fcca.png)

- Supported plugins
  - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Requirements

- Neovim >= 0.5.0

## Installation

```lua
use 'wilmanbarrios/palenight.nvim'
```

## Usage

You can enable the colorscheme in two ways

Using Vim-Script

```vim
colorscheme palenight
```

Using Lua

```lua
require('palenight').set()
```
