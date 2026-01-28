return {
  {
    "ray-x/lsp_signature.nvim",
    event = "LspAttach",
    opts = {
      bind = true,
      floating_window = true,
      hint_enable = false, -- evita hints duplicados
      handler_opts = {
        border = "rounded",
      },
      always_trigger = true,
      toggle_key = "<C-k>", -- opcional: força exibir assinatura
    },
  }
}
