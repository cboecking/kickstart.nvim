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
}
