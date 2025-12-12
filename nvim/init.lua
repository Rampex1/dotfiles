-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("vim-options")

-- Disable automatic comment continuation
local group = vim.api.nvim_create_augroup("DisableAutoCommentContinuation", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  group = group,
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
