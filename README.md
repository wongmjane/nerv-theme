# NERV

[![GitHub](https://img.shields.io/github/license/wongmjane/nerv-theme)](https://github.com/wongmjane/nerv-theme)

A dark editor theme inspired by 80s/90s cyberpunk interfaces, Evangelion's NERV headquarters, and the green-tinted cinematography of Wong Kar-wai. Industrial control terminals meet the melancholic warmth of *In the Mood for Love*.

![NERV Theme](screenshot.png)
*Standard Version*

![NERV (flat) Theme](screenshot-flat.png)
*Flat Variation*

## The Aesthetic

Deep oceanic greens meet warning-sign orange. Phosphor glow on aging CRT monitors. The quiet hum of a command terminal in an underground facility. Film grain over midnight corridors.

**Color Philosophy:**
- **Background**: Deep sea darkness (`#0a1612`) — the void behind the glass
- **Foreground**: Muted sage (`#8fb3a5`) — easy on the eyes during extended operations
- **Accent**: Signal orange (`#e85d04`) — urgent, alive, impossible to ignore
- **Functions**: Subdued purple (`#8a5a8a`) — mysterious systems at work
- **Types**: Industrial teal (`#3a7a8c`) — structural, foundational
- **Strings**: Organic green (`#4a8c5c`) — data in motion

## Installation

### VS Code / Cursor

[![VS Code Marketplace](https://img.shields.io/visual-studio-marketplace/v/wongmjane.nerv-theme?label=VS%20Code%20Marketplace)](https://marketplace.visualstudio.com/items?itemName=wongmjane.nerv-theme)
[![Open VSX](https://img.shields.io/open-vsx/v/wongmjane/nerv-theme?label=Open%20VSX)](https://open-vsx.org/extension/wongmjane/nerv-theme)

Install from [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=wongmjane.nerv-theme) or [Open VSX](https://open-vsx.org/extension/wongmjane/nerv-theme), or:

1. Open VS Code
2. Go to Extensions (`Cmd+Shift+X` / `Ctrl+Shift+X`)
3. Search for "NERV Theme"
4. Click Install
5. Open Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`)
6. Select "Preferences: Color Theme" → "NERV" or "NERV (flat)"

### Zed

1. Open Zed
2. Open Extensions (`Cmd+Shift+X`)
3. Search for "NERV"
4. Click Install

**Manual Installation:**
```bash
# Copy the theme to your Zed themes directory
mkdir -p ~/.config/zed/themes
cp zed-extension/themes/nerv.json ~/.config/zed/themes/
cp zed-extension/themes/nerv-flat.json ~/.config/zed/themes/
```

Then open Command Palette and select "theme: Select Theme" → "NERV" or "NERV (flat)".

### Neovim

**Using [lazy.nvim](https://github.com/folke/lazy.nvim):**

```lua
{
  "wongmjane/nerv-theme",
  dir = "path/to/neovim-theme",  -- or use git URL when published
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme nerv]])
    -- or
    -- vim.cmd([[colorscheme nerv-flat]])
  end,
}
```

**Manual Installation:**

```bash
# Copy the theme to your Neovim colors directory
mkdir -p ~/.config/nvim/colors
cp neovim-theme/colors/nerv.lua ~/.config/nvim/colors/
cp neovim-theme/colors/nerv-flat.lua ~/.config/nvim/colors/
```

Then add to your `init.lua`:
```lua
vim.cmd([[colorscheme nerv]])
-- or
vim.cmd([[colorscheme nerv-flat]])
```

See [neovim-theme/README.md](neovim-theme/README.md) for more details and plugin integration.

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

## Inspiration

This theme draws from:

- **Neon Genesis Evangelion** — NERV headquarters, MAGI supercomputer terminals
- **80s/90s cyberpunk** — command centers, surveillance systems, industrial control rooms
- **Wong Kar-wai** — the green-tinted melancholy of *In the Mood for Love*, *Chungking Express*
- **CRT phosphor aesthetics** — the glow of late-night terminal sessions

The goal is capturing a *feeling*—the weight of solitude in a darkened room, information flowing across screens, the human operator at the center of vast systems.

## Contributing

Contributions are welcome! If you'd like to port NERV to additional editors or improve existing themes, please [open a PR](https://github.com/wongmjane/nerv-theme).

## Credits

Created by [Jane Manchun Wong](https://wongmjane.com), synthesized with [Claude Code](https://claude.ai/code) (Opus 4.5).

## License

MIT License — See [LICENSE](LICENSE) for details.
