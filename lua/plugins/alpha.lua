---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local config_dir = vim.fn.stdpath "config"
    local ascii_art_dir = vim.fs.joinpath(config_dir .. "/ascii_art")
    local ascii_art_path = vim.fs.joinpath(ascii_art_dir .. "/doom-2.txt")
    local lines = {}
    for line in io.lines(ascii_art_path) do
      table.insert(lines, line)
    end
    opts.section.header.val = lines
    return opts
  end,
}
