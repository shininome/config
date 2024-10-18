return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      signature = {
        opts = {
          size = {
            height = 10,
          },
        },
      },
      progress = {
        enable = false,
      },
    },
    presets = {
      lsp_doc_border = true,
      long_message_to_split = true,
    },
  },
}
