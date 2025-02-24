return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      "<Leader>ff",
      "<cmd>Telescope find_files<CR>",
      desc = "Find files",
    },
    {
      "<Leader>lg",
      "<cmd>Telescope live_grep<CR>",
      desc = "Live grep",
    },
    {
      "<Leader>gs",
      "<cmd>Telescope grep_string<CR>",
      desc = "Grep string",
    },
  }
}
