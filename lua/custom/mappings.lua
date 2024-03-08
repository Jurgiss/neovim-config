---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- Rust
    ["<leader>rc"] = {
      function()
        vim.cmd.RustLsp('codeAction')
      end,
      "Rust code actions"
    },

    -- DAP
    ["<leader>tb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
       "Toggle breakpoint"
    },
    ["<leader>ts"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open()
      end,
      "Open debugging sidebar"
    }
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
