return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opt = true,
    config = function()
        require("transparent").toggle(false)
        
    end,
}
