require'nvim-treesitter.configs'.setup {
  -- Highlight
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  -- Indent
  indent = {
    enable = true
  },

  -- Playground
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },

  rainbow = {enable = true}
}


--vim.api.nvim_exec([[
--    set foldermethod=expr
--    set foldexpr=nvim_treesitter#foldexpr()
--]], true)
--

