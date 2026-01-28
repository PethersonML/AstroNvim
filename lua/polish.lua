-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.keymap.set("n", "<leader>ai", function()
  local status = require("copilot.client")

  if status.is_disabled() then
    vim.cmd("Copilot enable")
    vim.notify("Copilot ON", vim.log.levels.WARN)
  else
    vim.cmd("Copilot disable")
    vim.notify("Copilot OFF", vim.log.levels.WARN)
  end
end, { desc = "Toggle Copilot" })
