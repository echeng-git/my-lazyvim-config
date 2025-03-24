local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.latex = {
  install_info = {
    url = "https://github.com/latex-lsp/tree-sitter-latex", -- parser repository
    files = { "src/parser.c" }, -- source file for the parser
    branch = "main", -- change if you want a different branch
  },
  filetype = "tex", -- this tells Treesitter which filetype to use; LaTeX files typically have the "tex" filetype
}
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
