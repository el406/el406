local prettier = require("prettier")
    

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
    "lua",
    "cpp",
    "c",
    "py",
  },
})

vim.keymap.set('n',"<leader>fr", vim.lsp.buf.format)


