# NERV Theme for Neovim

A dark Neovim theme inspired by 80s/90s cyberpunk interfaces, Evangelion's NERV headquarters, and the green-tinted cinematography of Wong Kar-wai. Industrial control terminals meet the melancholic warmth of *In the Mood for Love*.

![NERV Theme](../screenshot.png)

## The Aesthetic

Deep oceanic greens meet warning-sign orange. Phosphor glow on aging CRT monitors. The quiet hum of a command terminal in an underground facility. Film grain over midnight corridors.

**Color Philosophy:**
- **Background**: Deep sea darkness (`#0a1612`) — the void behind the glass
- **Foreground**: Muted sage (`#8fb3a5`) — easy on the eyes during extended operations
- **Accent**: Signal orange (`#e85d04`) — urgent, alive, impossible to ignore
- **Functions**: Subdued purple (`#8a5a8a`) — mysterious systems at work
- **Types**: Industrial teal (`#3a7a8c`) — structural, foundational
- **Strings**: Organic green (`#4a8c5c`) — data in motion

## Variations

- **NERV**: The standard theme with subtle borders and depth.
- **NERV (flat)**: A flattened variation with borders blending into the background for a seamless look.

## Features

- Full TreeSitter support
- LSP semantic highlighting
- LSP diagnostics integration
- Git signs integration
- Plugin support for:
  - Telescope
  - NvimTree / Neo-tree
  - Bufferline
  - Lualine
  - Which-key
  - Indent Blankline
  - Notify
  - And more!

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "wongmjane/nerv-theme",
  dir = "path/to/neovim-theme",  -- or use git URL when published
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme nerv]])
  end,
}
```

### Using [packer.nvim](https://github.com/weferwefwer3e43wef/packer.nvim)

```lua
use {
  "wongmjane/nerv-theme",
  config = function()
    vim.cmd([[colorscheme nerv]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'wongmjane/nerv-theme'
```

Then add to your `init.vim` or `init.lua`:

```vim
colorscheme nerv
```

### Manual Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/wongmjane/nerv-theme.git
   ```

2. Copy the colorscheme file to your Neovim colors directory:
   ```bash
   mkdir -p ~/.config/nvim/colors
   cp neovim-theme/colors/nerv.lua ~/.config/nvim/colors/
   cp neovim-theme/colors/nerv-flat.lua ~/.config/nvim/colors/
   ```

3. Add to your `init.lua`:
   ```lua
   vim.cmd([[colorscheme nerv]])
   -- or
   vim.cmd([[colorscheme nerv-flat]])
   ```

   Or in `init.vim`:
   ```vim
   colorscheme nerv
   ```

## Color Palette

| Role | Hex |
|------|-----|
| Background | `#0a1612` |
| Foreground | `#8fb3a5` |
| Accent | `#e85d04` |
| Functions | `#8a5a8a` |
| Types | `#3a7a8c` |
| Strings | `#4a8c5c` |
| Numbers | `#d4a017` |
| Comments | `#4a6a5d` |
| Keywords | `#e85d04` |
| Properties | `#c97a4a` |
| Constants | `#5a9a8c` |

## Terminal Colors

NERV includes terminal color definitions for a cohesive experience. The terminal palette matches the editor theme with industrial greens, signal orange, and muted supporting colors.

## Plugin Integration

### Telescope

The theme provides custom highlights for Telescope with an orange accent for selections and matches.

### File Trees (NvimTree / Neo-tree)

Directories are colored in industrial teal, with git status indicators using the standard git color palette.

### Statusline (Lualine)

Lualine integrates seamlessly with the signal orange accent for the active mode indicator.

### Bufferline

Bufferline highlights use elevated backgrounds with orange indicators for the selected buffer.

## Inspiration

This theme draws from:

- **Neon Genesis Evangelion** — NERV headquarters, MAGI supercomputer terminals
- **80s/90s cyberpunk** — command centers, surveillance systems, industrial control rooms
- **Wong Kar-wai** — the green-tinted melancholy of *In the Mood for Love*, *Chungking Express*
- **CRT phosphor aesthetics** — the glow of late-night terminal sessions

The goal is capturing a *feeling*—the weight of solitude in a darkened room, information flowing across screens, the human operator at the center of vast systems.

## Related Themes

NERV is also available for:
- **VS Code / Cursor** - [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=wongmjane.nerv-theme)
- **Zed** - Available via Zed Extensions

See the [main NERV repository](https://github.com/wongmjane/nerv-theme) for all implementations.

## Contributing

Contributions are welcome! If you'd like to improve the Neovim theme or fix issues, please [open a PR](https://github.com/wongmjane/nerv-theme).

## Credits

Created by [Jane Manchun Wong](https://wongmjane.com), synthesized with [Claude Code](https://claude.ai/code) (Opus 4.5).

## License

MIT License — See [LICENSE](LICENSE) for details.
