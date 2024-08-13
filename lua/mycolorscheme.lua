-- mycolorscheme_template.lua
CustomColorSchemeActivate = function()
  require('base16-colorscheme').setup {
    base00 = '#221911',
    base01 = '#DC752C',
    base02 = '#FFBF7B',
    base03 = '#FFE0C9',
    base04 = '#B8AC66',
    base05 = '#EE9468',
    base06 = '#F8BF6F',
    base07 = '#EDD4C2',
    base08 = '#CAB5A8',
    base09 = '#FFAD7B',
    base0A = '#FFFDFF',
    base0B = '#FFFFFF',
    base0C = '#F5D8AB',
    base0D = '#FFD0BB',
    base0E = '#FFF9F5',
    base0F = '#FFDBC6',
  }

  vim.cmd [[
		highlight Normal guibg=none
		highlight NonText guibg=none
		highlight Normal ctermbg=none
		highlight NonText ctermbg=none
	]]
end
