local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
    disable = {"markdown"},
  },
  indent = {
    enable = true,
  },
  auto_install = true,
  sync_install = true,
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "dockerfile",
    "go",
    "gitignore",
    "gomod",
    "markdown",
    "sql",
    "python",
    "rust"
  }
})
