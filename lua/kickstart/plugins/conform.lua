return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end,
      formatters_by_ft = {
        -- Lua
        lua = { 'stylua' },

        -- C/C++
        c = { 'clang-format' },
        cpp = { 'clang-format' },

        -- Python - using ruff for formatting and import sorting
        python = { 'ruff_format', 'ruff_organize_imports' },

        -- Go
        go = { 'gofmt', 'goimports' },

        -- Rust
        rust = { 'rustfmt' },

        -- Nix
        nix = { 'nixfmt' },

        -- Bash
        bash = { 'shfmt' },
        sh = { 'shfmt' },

        -- Fish
        fish = { 'fish_indent' },

        -- YAML
        yaml = { 'yamlfmt' },

        -- JSON
        json = { 'jq' },
        jsonc = { 'jq' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
