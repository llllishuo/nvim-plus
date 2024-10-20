return {
    "lervag/vimtex",
    lazy = false,
    opt = true,
    config = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.tex_flavor = "latex"
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_view_general_viewer = "zathura"
        vim.g.tex_comment_nospell = 1
        vim.g.vimtex_compiler_progname = "nvr"
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
        vim.g.vimtex_view_general_options_latexmk = "--unique"
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = "-pdf",
            pdflatex = "-pdf",
            dvipdfex = "-pdfdvi",
            lualatex = "-lualatex",
            xelatex = "-xelatex",
            ["context (pdftex)"] = "-pdf -pdflatex=texexec",
            ["context (luatex)"] = "-pdf -pdflatex=context",
            ["context (xetex)"] = "-pdf -pdflatex='texexec --xtx'",
        }
        vim.g.vimtex_compiler_latexmk = {
            build_dir = "",
            callback = 1,
            continuous = 1,
            executable = "latexmk",
            hooks = {},
            options = {
                "-verbose",
                "-file-line-error",
                "-shell-escape",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }
        vim.g.vimtex_quickfix_open_on_warning = 0
    end,
}
