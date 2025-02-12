local HOME = os.getenv("HOME")

return {
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_refresh_slow = 1
      vim.g.mkdp_auto_close = 0
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },
}
