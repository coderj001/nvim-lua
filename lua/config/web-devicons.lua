local M = {}

function M.setup()
    require "nvim-web-devicons".setup {
        override = {
          html = {
            icon = "",
            color = "#DE8C92",
            name = "html"
          },
          css = {
            icon = "",
            color = "#61afef",
            name = "css"
          },
          js = {
            icon = "",
            color = "#EBCB8B",
            name = "js"
          },
          py = {
            icon = "🐍",
            color = "#20c40a",
            name = "png"
          },
          png = {
            icon = " ",
            color = "#BD77DC",
            name = "png"
          },
          jpg = {
            icon = " ",
            color = "#BD77DC",
            name = "jpg"
          },
          jpeg = {
            icon = " ",
            color = "#BD77DC",
            name = "jpeg"
          },
          mp3 = {
            icon = "",
            color = "#C8CCD4",
            name = "mp3"
          },
          mp4 = {
            icon = "",
            color = "#C8CCD4",
            name = "mp4"
          },
          toml = {
            icon = "",
            color = "#61afef",
            name = "toml"
          },
          lock = {
            icon = "",
            color = "#117cad",
            name = "lock"
          }
      }
    }
end

return M
