-- Collapsing and uncollpasing lists (It has other values, check it out later!!!!)
return {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', --[[ '<space>s']] },
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    config = function()
        require('treesj').setup({ --[[ your config ]] })
    end,
}
