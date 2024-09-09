-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.comment.ts-comments-nvim" },
  { import = "astrocommunity.completion.codeium-nvim" },
  { import = "astrocommunity.diagnostics.error-lens-nvim" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.indent.indent-rainbowline" },
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.utility.neodim" },
}
