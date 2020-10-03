function setup()
  local util = require 'nvim_lsp/util'
  local lsp = require 'nvim_lsp'

  local lsp_status = require('lsp-status')
  lsp_status.register_progress()

  lsp.rust_analyzer.setup {
    root_dir = util.root_pattern("Cargo.lock"),
    init_options = {
      publishDecorations = true;
    },
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          enable = false
        }
      }
    }
  }

  lsp.gopls.setup {
    cmd = { "/home/hoangline/go/bin/gopls" }
  }

  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,              -- false will disable the whole extension
    },
    refactor = {
      highlight_definitions = { enable = true },
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "gnn",
        scope_incremental = "grc",
        node_decremental = "gnp",
      },
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
  }

  require'telescope'.setup {
    defaults = {
      winblend = 3,
      layout_strategy = "flex",
    }
  }
  vim.lsp.callbacks['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
  vim.lsp.callbacks['textDocument/references'] = require'lsputil.locations'.references_handler
  vim.lsp.callbacks['textDocument/definition'] = require'lsputil.locations'.definition_handler
  vim.lsp.callbacks['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
  vim.lsp.callbacks['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
  vim.lsp.callbacks['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
  vim.lsp.callbacks['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
  vim.lsp.callbacks['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
end

return {
  setup = setup
}
