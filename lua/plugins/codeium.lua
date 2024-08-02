---@type LazySpec
return {
  -- Add Codeium plugin with the following keymaps:
  -- <C-g>      - Accept completion suggestion
  -- <M-]>      - Cycle next completion suggestion
  -- <M-[>      - Cycle previous completion suggestion
  -- <C-x>      - Clear suggestion
  -- <leader>;  - Toggle Codeium completion
  -- <leader>a  - Toggle Codeium chat assistant
  {
    "Exafunction/codeium.vim",
    event = "User AstroFile",
    config = function()
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
      vim.keymap.set("i", "<M-]>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true, silent = true })
      vim.keymap.set("i", "<M-[>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true, silent = true })
      vim.keymap.set("i", "<C-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true, silent = true })
      vim.keymap.set("n", "<leader>;", function()
        if vim.g.codeium_enabled == true then
          vim.cmd "CodeiumDisable"
          vim.cmd "echo 'Codeium disabled'"
        else
          vim.cmd "CodeiumEnable"
          vim.cmd "echo 'Codeium enabled'"
        end
      end, { noremap = true, desc = "Toggle Codeium completion" })
      vim.keymap.set("n", "<leader>a", function()
        return vim.fn["codeium#Chat"]()
      end, { noremap = true, desc = "Toggle Codeium chat assistant" })
    end,
  },
}
