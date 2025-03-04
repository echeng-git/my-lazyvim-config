# 💤 LazyVim

My template for [LazyVim](https://github.com/LazyVim/LazyVim). [(documentation goes here)](https://lazyvim.github.io/installation) on WSL

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
$ cd /
$ sudo touch .clang-format
$ sudo echo "IndentWidth: 4" > .clang-format
```

Note: this is very janky, but feel free to add your own `.clang-format` files in the root directories
of whatever you are working on, and that file will be used instead.

### Other

- For Markdown preview to not crash (using Ubuntu), install `xdg-utils`: `apt-get install -y xdg-utils`
- Install [lazygit](https://github.com/jesseduffield/lazygit#ubuntu)

## TODO

Get LaTeX snippets working with inline Markdown, as well as with LaTeX files themselves.
