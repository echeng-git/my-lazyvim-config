# 💤 LazyVim

My template for [LazyVim](https://github.com/LazyVim/LazyVim). [(documentation goes here)](https://lazyvim.github.io/installation) on WSL

## Some dependencies

- Install nodejs for pyright LSP
- Since I use Markdown for notes, I don't 100% follow Markdown styling standards since that would be a bit annoying to do... So to avoid the linter from complaining, create `$HOME/.markdownlint-cli2.yaml` and fill it with the following:

```yaml
config:
  MD013: false # allow long lines
  MD033: false # allow inline HTML
  MD051: false # allow link fragments
  MD045: false # allow images with no alt text
```

- For Markdown preview to not crash (using Ubuntu), install `xdg-utils`: `apt-get install -y xdg-utils`
