require("transparent").setup({ -- Optional, you don't have to run setup.
--  groups = { -- table: default groups
  --  'NormalNC','SignColumn', 'CursorLine'
  --},
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
