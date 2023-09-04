return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  -- event = { "BufReadPre /home/mbhon1/Documents/Obsidian/**.md" },
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  event = { "BufReadPre " .. vim.fn.expand "~" .. "/Documents/Obsidian/**.md" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    dir = "Obsidian",  
    daily_notes = {
    folder = "Journal",
    -- date_format = "%Y-%m-%d"
    },
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
    new_notes_location = "current_dir",
    prepend_note_id = true
  },

  disable_frontmatter = false,

  templates = {
    subdir = "Templates",
    -- date_format = "%Y-%m-%d-%a",
    -- time_format = "%H:%M",
  },

  backlinks = {
    height = 10,
    wrap = true,
  },

  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    -- vim.fn.jobstart({"open", url})  -- Mac OS
    vim.fn.jobstart({"xdg-open", url})  -- linux
  end,

  open_app_foreground = false,

  finder = "telescope.nvim",
  -- Accepted values are "current", "hsplit" and "vsplit"
  open_notes_in = "current"
}
