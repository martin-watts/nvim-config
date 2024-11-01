return {
  --[[
    Provides some additional 'targets':
    - ( ) (work on parentheses)
    - { } B (work on curly braces)
    - [ ] (work on square brackets)
    - < > (work on angle brackets)
    - t (work on tags)
    So you can do things like `diB` to delete
    in curly brackets or `yat` to yank around tags etc.
  ]]--
  { "wellle/targets.vim" },

  --[[
   vim-surround enables commands on surrounding things
   which is super useful for markup dev work
   e.g. cs"' - changes surrounding double quotes to single quotes
        cs'<li> - will change single quotes to a pair of li tags
        cst" - will change surrounding tags to double quotes
        ds" - will delete surrounding double quotes
        ysiw" - will add quotes around a word
        yss] - will add square brackets around a line
        . - will repeat the last command because of vim-repeat
  ]]--
  { "tpope/vim-surround", dependencies = { "tpope/vim-repeat" } },
}
