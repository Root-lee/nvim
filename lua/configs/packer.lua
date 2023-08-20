local M = {}
function M.config()
    require('packer').init({
    git = {
        default_url_format = 'https://ghproxy.com/https://github.com/%s'
    }
})
end

return M
