-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set PowerShell as the default shell on Windows
-- :help shell-powershell
if vim.fn.has "win32" ~= 0 then
  vim.cmd [[ let &shell = executable('pwsh') ? 'pwsh' : 'powershell' ]]
  vim.cmd [[ let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';Remove-Alias -Force -ErrorAction SilentlyContinue tee;' ]]
  vim.cmd [[ let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode' ]]
  vim.cmd [[ let &shellpipe  = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode' ]]
  vim.cmd [[ set shellquote= shellxquote= ]]
end

-- Neovide configuration
if vim.g.neovide then
  vim.o.guifont = "MartianMono NF:h10"
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_detach_on_quit = "always_detach"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
