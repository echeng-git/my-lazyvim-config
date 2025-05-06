# 💤 LazyVim

My template for [LazyVim](https://github.com/LazyVim/LazyVim) on WSL2. I use [WezTerm](https://wezterm.org/index.html).

- [Installation steps](https://lazyvim.github.io/installation)
- [WezTerm config](https://github.com/echeng-git/my-wezterm-config)

> My current Alacritty configuration (on Windows, create `%APPDATA%/alacritty/alacritty.toml` with the following contents):

```toml
[font]
normal = { family = "D2CodingLigature Nerd Font", style = "Regular" }
bold = { family = "D2CodingLigature Nerd Font", style = "Bold" }
italic = { family = "D2CodingLigature Nerd Font", style = "Italic" }
bold_italic = { family = "D2CodingLigature Nerd Font", style = "Bold Italic" }
size = 12.0

[window]
dynamic_title = true
opacity = 0.90

[keyboard]
bindings = [
  { key = "Slash", mods = "Control", chars = "\u001f" },
  { key = "Back", mods = "Control", chars = "\u0017" },
  { key = "+", mods = "Control", action = "IncreaseFontSize" },
  { key = "-", mods = "Control", action = "DecreaseFontSize" },
  { key = "0", mods = "Control", action = "ResetFontSize" },
]

# https://github.com/rose-pine/alacritty/blob/main/dist/rose-pine-moon.toml
# Colors section of "Alacritty - TOML configuration file format"
# https://github.com/alacritty/alacritty/blob/master/extra/man/alacritty.5.scd#colors

[colors.primary]
foreground = "#e0def4"
background = "#191724"
dim_foreground = "#908caa"
bright_foreground = "#e0def4"

[colors.cursor]
text = "#e0def4"
cursor = "#524f67"

[colors.vi_mode_cursor]
text = "#e0def4"
cursor = "#524f67"

[colors.search.matches]
foreground = "#908caa"
background = "#26233a"

[colors.search.focused_match]
foreground = "#191724"
background = "#ebbcba"

[colors.hints.start]
foreground = "#908caa"
background = "#1f1d2e"

[colors.hints.end]
foreground = "#6e6a86"
background = "#1f1d2e"

[colors.line_indicator]
foreground = "None"
background = "None"

[colors.footer_bar]
foreground = "#e0def4"
background = "#1f1d2e"

[colors.selection]
text = "#e0def4"
background = "#403d52"

[colors.normal]
black = "#26233a"
red = "#eb6f92"
green = "#31748f"
yellow = "#f6c177"
blue = "#9ccfd8"
magenta = "#c4a7e7"
cyan = "#ebbcba"
white = "#e0def4"

[colors.bright]
black = "#6e6a86"
red = "#eb6f92"
green = "#31748f"
yellow = "#f6c177"
blue = "#9ccfd8"
magenta = "#c4a7e7"
cyan = "#ebbcba"
white = "#e0def4"

[colors.dim]
black = "#6e6a86"
red = "#eb6f92"
green = "#31748f"
yellow = "#f6c177"
blue = "#9ccfd8"
magenta = "#c4a7e7"
cyan = "#ebbcba"
white = "#e0def4"
```

## Some dependencies

### LSP

#### Markdown

- Since I use Markdown for notes, I don't 100% follow Markdown styling standards since that would be a bit annoying to do... So to avoid the linter from complaining, create `$HOME/.markdownlint-cli2.yaml` and fill it with the following:

```yaml
config:
  MD013: false # allow long lines
  MD033: false # allow inline HTML
  MD051: false # allow link fragments
  MD045: false # allow images with no alt text
  MD029: false # ignore list numbering order
```

#### Python

- Install nodejs for pyright LSP

#### C

- For C programming, since I like four spaces in my indentation, perform the following:

```bash
cd /
sudo touch .clang-format
sudo echo "IndentWidth: 4" > .clang-format
```

Note: this is very janky, but feel free to add your own `.clang-format` files in the root directories
of whatever you are working on, and that file will be used instead.

#### JavaScript/TypeScript

- Install [Biome.js](https://biomejs.dev/guides/getting-started/)
  - Right after you successfully install Biome via `npm`, you should be able to remove the `package*.json` and `node_modules/` directories.

### Other

- For Markdown preview to not crash (using Ubuntu), install `xdg-utils`: `apt-get install -y xdg-utils`
- Install [lazygit](https://github.com/jesseduffield/lazygit#ubuntu)
- For image preview, paste the following:

```bash
# for magick_cli
sudo apt install imagemagick
# for magick_rock
sudo apt install libmagickwand-dev
```
