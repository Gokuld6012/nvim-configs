return {
  { "nvim-lua/plenary.nvim" },
  { "echasnovski/mini.icons" },
  { "nvim-tree/nvim-web-devicons" },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-mini/mini.icons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },  
	{
	  "nvim-tree/nvim-tree.lua",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
	    require("nvim-tree").setup({})
	  end,
	},
{
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
}
}
