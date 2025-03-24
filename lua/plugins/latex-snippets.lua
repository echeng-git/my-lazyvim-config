return {
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    dependencies = { "L3MON4D3/LuaSnip" },
    ft = { "tex", "markdown" },
    config = function()
      require("luasnip-latex-snippets").setup({ use_treesitter = true, allow_on_markdown = true })

      local ls = require("luasnip")
      ls.setup({ enable_autosnippets = true })
    end,
  },
}
