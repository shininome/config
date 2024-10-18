return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()

        require("luasnip.loaders.from_snipmate").lazy_load({ paths = "./snippets" })
      end,
    },
  },
}