-- based off of a config in the
-- discussion page of catppuccin

local base = {
  red = "#ff657a",
  maroon = "#F29BA7",
  peach = "#ff9b5e",
  yellow = "#eccc81",
  green = "#a8be81",
  teal = "#9cd1bb",
  sky = "#A6C9E5",
  sapphire = "#86AACC",
  blue = "#5d81ab",
  lavender = "#66729C",
  mauve = "#b18eab",
}

local extend_base = function(value)
  return vim.tbl_extend("force", base, value)
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      return {
        require("catppuccin").setup({
          flavour = "mocha", -- latte, frappe, macchiato, mocha
          background = { -- :h background
            light = "latte",
            dark = "frappe",
          },
          transparent_background = true, -- disables setting the background color.
          show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
          term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
          dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
          },
          no_italic = false, -- Force no italic
          no_bold = false, -- Force no bold
          no_underline = false, -- Force no underline
          styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" }, -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
            -- miscs = {}, -- Uncomment to turn off hard-coded styles
          },
          color_overrides = {
            latte = extend_base({
              text = "#202027",
              subtext1 = "#263168",
              subtext0 = "#4c4f69",
              overlay2 = "#737994",
              overlay1 = "#838ba7",
              base = "#fcfcfa",
              mantle = "#EAEDF3",
              crust = "#DCE0E8",
              pink = "#EA7A95",
              mauve = "#986794",
              red = "#EC5E66",
              peach = "#FF8459",
              yellow = "#CAA75E",
              green = "#87A35E",
            }),
            frappe = extend_base({
              text = "#fcfcfa",
              surface2 = "#535763",
              surface1 = "#3a3d4b",
              surface0 = "#30303b",
              base = "#202027",
              mantle = "#1c1d22",
              crust = "#171719",
            }),
          },
          custom_highlights = {},
          default_integrations = true,
          integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = false,
            mini = {
              enabled = true,
              indentscope_color = "",
            },
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
          },
        }),
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
