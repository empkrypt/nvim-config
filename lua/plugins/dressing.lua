local dressing = require("dressing")

dressing.setup({
    input = {
        border = "single",
        default_prompt = "➤ ",
        win_options = {
            winhighlight =
            "Normal:DressingInputNormalFloat,NormalFloat:DressingInputNormalFloat,FloatBorder:DressingInputFloatBorder",
        },
    },
    select = {
        backend = { "telescope", "builtin" },
        builtin = {
            win_options = {
                winhighlight =
                "Normal:DressingInputNormalFloat,NormalFloat:DressingInputNormalFloat,FloatBorder:DressingInputFloatBorder",
            },
        },
    },
})
