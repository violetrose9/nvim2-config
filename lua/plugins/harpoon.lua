return {
    {
        "ThePrimeagen/harpoon",
        config = function ()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<space>a", mark.add_file)
            vim.keymap.set("n", "<space>h", ui.toggle_quick_menu)

            vim.keymap.set("n", "H", function() ui.nav_file(1) end)
            vim.keymap.set("n", "L", function() ui.nav_file(2) end)
            vim.keymap.set("n", "J", function() ui.nav_file(3) end)
            vim.keymap.set("n", "M", function() ui.nav_file(4) end)
        end
    }
}
