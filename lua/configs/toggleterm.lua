local M = {}
function M.config()
    require("toggleterm").setup{
        direction = 'float',
        float_opts = {
            -- double, single, shadow, curved
            border = 'double'
        }
    }
end

return M
