return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opt = true,
    config = function()
        require("transparent").toggle(true)
    end,
}
