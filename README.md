# Neovim Configuration

Modular Neovim configuration forked from [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim).

## Installation

```sh
git clone <your-repo-url> "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## Structure

```
.
├── init.lua                  # Entry point
├── lua/
│   ├── options.lua          # Neovim options
│   ├── keymaps.lua          # Keybindings
│   ├── lazy-bootstrap.lua   # Plugin manager bootstrap
│   ├── lazy-plugins.lua     # Plugin configuration
│   ├── kickstart/plugins/   # Plugin definitions
│   └── custom/plugins/      # Custom plugins
```

## Plugins

- **lazy.nvim** - Plugin manager
- **guess-indent.nvim** - Auto-detect indentation
- **gitsigns** - Git integration
- **which-key** - Keybinding hints
- **telescope** - Fuzzy finder
- **lspconfig** - LSP configuration
- **conform** - Code formatting
- **blink-cmp** - Completion engine
- **tokyonight** - Colorscheme
- **todo-comments** - TODO highlighting
- **mini.nvim** - Collection of minimal plugins
- **treesitter** - Syntax highlighting

