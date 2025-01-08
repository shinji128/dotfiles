require("noice").setup({
  messages = {
    view_error = "mini",
  },
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = false,
    command_palette = true,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = false,
  },
  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
      },
      opts = { skip = true },
    },
  },
})
