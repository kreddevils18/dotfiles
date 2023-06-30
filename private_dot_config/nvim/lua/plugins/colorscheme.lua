local setup, material = pcall(require, "material")
if not setup then
  print("colorscheme not found!")
  return
end

vim.g.material_style = "deep ocean"

material.setup({
  lualine_style = "default"
})

vim.cmd('colorscheme material')

