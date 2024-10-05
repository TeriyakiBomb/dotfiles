local nova_theme = {}

-- Set the colors
nova_theme.colors = {
  text = "#f5f1ff",  -- hsl(253, 100%, 96%)
  text_invisible = "#3b2a51",  -- hsl(253, 40%, 30%)
  text_selected_bg = "#4a3b5a",  -- hsl(254, 34%, 35%)
  cursor_bg = "#443965",  -- hsla(262, 35%, 20%, 0.232)
  indentguide = "#3e2d51",  -- hsl(262, 40%, 30%)
  gutter = "#383946",  -- hsl(237, 15%, 30%)
  gutter_selected = "#665b75",  -- hsl(254, 31%, 46%)
  keyword = "#51a9ff",  -- hsl(207, 100%, 74%)
  comment = "#565479",  -- hsl(238, 15%, 40%)
  processing = "#4b627f",  -- hsl(211, 20%, 50%)
  declaration = "#4b627f",  -- hsl(211, 20%, 50%)
  bracket = "#4b627f",  -- hsl(211, 20%, 50%)
  operator = "#f25499",  -- hsl(339, 94%, 63%)
  invalid_bg = "#ffdfeb",  -- hsl(355, 82%, 96%)
  invalid_fg = "#f5f1ff",  -- hsl(253, 100%, 96%)
  boolean = "#f5f1ff",  -- hsl(253, 100%, 96%)
  number = "#c188e2",  -- hsl(270, 76%, 71%)
  type = "#bfa9e3",  -- hsl(256, 51%, 68%)
  string = "#ffa641",  -- hsl(26, 100%, 64%)
  string_key = "#f5f1ff",  -- hsl(253, 100%, 96%)
  regex = "#ecea99",  -- hsl(60, 50%, 75%)
  function_name = "#f25499",  -- hsl(339, 94%, 63%)
  constant = "#43d38f",  -- hsl(133, 73%, 70%)
  variable_builtin = "#51a9ff",  -- hsl(207, 100%, 74%)
}

-- Apply the highlight groups
nova_theme.apply = function()
  -- Basic Text Highlighting
  vim.api.nvim_set_hl(0, 'Normal', { fg = nova_theme.colors.text })
  vim.api.nvim_set_hl(0, 'Visual', { bg = nova_theme.colors.text_selected_bg })
  vim.api.nvim_set_hl(0, 'Cursor', { bg = nova_theme.colors.cursor_bg })

  -- Comments and Keywords
  vim.api.nvim_set_hl(0, 'Comment', { fg = nova_theme.colors.comment })
  vim.api.nvim_set_hl(0, 'Keyword', { fg = nova_theme.colors.keyword })
  vim.api.nvim_set_hl(0, 'Operator', { fg = nova_theme.colors.operator })

  -- Strings and Numbers
  vim.api.nvim_set_hl(0, 'String', { fg = nova_theme.colors.string })
  vim.api.nvim_set_hl(0, 'Number', { fg = nova_theme.colors.number })
  vim.api.nvim_set_hl(0, 'Boolean', { fg = nova_theme.colors.boolean })

  -- Functions and Variables
  vim.api.nvim_set_hl(0, 'Function', { fg = nova_theme.colors.function_name })
  vim.api.nvim_set_hl(0, 'Type', { fg = nova_theme.colors.type })
  vim.api.nvim_set_hl(0, 'Constant', { fg = nova_theme.colors.constant })

  -- Handle invalid (error) highlights
  vim.api.nvim_set_hl(0, 'Error', { fg = nova_theme.colors.invalid_fg, bg = nova_theme.colors.invalid_bg })

  -- Add more highlights as needed based on the Nova theme definitions
end

return nova_theme