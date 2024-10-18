return{
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- telescope 所需
        "MunifTanjim/nui.nvim",

        -- 可选
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- 配置放在这里
        cn = {
            enabled = true,
            translator = false,
            translate_problems = false,
        },

        lang = "cpp",
        storage = {
            home = "~/my_code/" .. "/leetcode",
            cache = "~/my_code/leetcode/" .. "/leetcode",
        },
        injector = {
            ["cpp"] = {
                before = { "#include <iostream>", "#include <vector>","using namespace std;" },
                after = "int main() {}",
            },
        }
    },
}
