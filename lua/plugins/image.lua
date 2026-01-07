local term = os.getenv("TERM")

-- only really practical for terminal emulators that natively support the Kitty graphics protocol
-- WezTerm does not support inline image rendering.
if term == "xterm-kitty" or term == "xterm-ghostty" then
  return {
    {
      "3rd/image.nvim",
      build = false,
      opts = {
        processor = "magick_cli",
        backend = "kitty",
        integrations = {
          markdown = {
            only_render_image_at_cursor = true,
            only_render_image_at_cursor_mode = "popup",
            floating_windows = true,
          },
        },
      },
    },
  }
else
  return {}
end
