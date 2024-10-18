return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp", -- This is the regexp branch, use this for the new version
  opts = {
    settings = {
      search = {
            miniconda = {
          command = "fd /python$ /opt/homebrew/Caskroom/miniconda/base/envs --full-path --color never -E lib -E share",
                type = "anaconda"
            },
            base = {
          command = "fd /python$ /opt/homebrew/Caskroom/miniconda/base/bin --full-path --color never -E lib -E share",
                type = "anaconda"
            },

      },
    },
  },
  -- ft = "python",
  -- keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
