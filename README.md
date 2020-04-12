# Base16 Solarized Original Colors Vim

A simple Base16 colorscheme for vim.

Based on the original [Base16 Vim].

This colorscheme is kept as simple as it can get: no gVim support,
no hardcoded colors.
The actual colors are determined by the terminal theme.
This means no need for templates and generating colorschemes.

The main difference to [Base16 Vim] is that the colors are mapped to syntax
groups not according to the Base16 styling guidelines
but according to the original
[solarized colorscheme](https://github.com/altercation/vim-colors-solarized).
Using this colorscheme with the Base16 solarized theme should look very similar
to the original
while other schemes have the familiar colors in different shades.

[Base16 Vim]: https://github.com/chriskempson/base16-vim

See the [Base16 repository](https://github.com/chriskempson/base16) for more information.

## Installation

Standard plugin manager / manual installation.

Activate with `colorscheme base16-solarized-original-dark`.

## Color Space

By default, the theme simply uses the terminal colors `color0-color15`.

Add `let base16colorspace=256` before the `colorscheme` declaration
to use this theme with a Base16 theme using the 256 color scheme
(`color0-color21`)
provided by [base16-shell](https://github.com/chriskempson/base16-shell).
This option is recommended since it leaves the 16 ANSI colors alone.
