-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set PowerShell as the default shell
-- :help shell-powershell
vim.cmd [[ let &shell = executable('pwsh') ? 'pwsh' : 'powershell' ]]
vim.cmd [[ let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';Remove-Alias -Force -ErrorAction SilentlyContinue tee;' ]]
vim.cmd [[ let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode' ]]
vim.cmd [[ let &shellpipe  = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode' ]]
vim.cmd [[ set shellquote= shellxquote= ]]
