-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--------
--chuboe
--------
-- added blink-emoji.nvim for github-style emoji completion
return {
  {
    'moyiz/blink-emoji.nvim',
    dependencies = { 'saghen/blink.cmp' },
  },
  {
    'mikesmithgh/kitty-scrollback.nvim',
    enabled = true,
    lazy = true,
    cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
    event = { 'User KittyScrollbackLaunch' },
    config = function()
      require('kitty-scrollback').setup({
        paste_window = {
          yank_register_enabled = false,
        },
        callbacks = {
          after_ready = function(kitty_data, opts)
            vim.api.nvim_set_option_value('buftype', 'nofile', { buf = 0 })
          end,
        },
      })
    end,
  },
}
