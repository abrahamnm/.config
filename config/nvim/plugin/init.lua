require('telescope').setup {
  extensions = {
    file_browser = {
      select_ibuffer = true,
      hidden = true,
      grouped = true,
      mappings = {
        ["n"] = {
          ["o"] = "select_default"
        }
      }
    }
  },
  defaults = {
    prompt_prefix = '$',
    layout_strategy = 'horizontal',
    sorting_strategy = 'ascending',
    layout_config = {
      horizontal = {
        mirror = true,
        prompt_position = 'top'
      }
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
