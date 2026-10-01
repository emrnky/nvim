return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<C-a>", function()
            if vim.bo.filetype == "neo-tree" then
                vim.cmd("Neotree close")
            else
                vim.cmd("Neotree focus filesystem reveal left")
            end
        end, { silent = true, desc = "Neo-tree: focus / close" })
    end
}
