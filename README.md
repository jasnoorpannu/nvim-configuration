# Ultimate Neovim Development Environment

A blazingly fast, beautiful, and feature-rich Neovim configuration designed for modern polyglot developers. Built with simplicity and productivity in mind.

![Neovim Version](https://img.shields.io/badge/Neovim-0.10+-green.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

---

## What Makes This Config Special?

### Zero-Config Setup
- One command installation
- All language servers install automatically
- No manual configuration needed
- Just clone and code

### Beautiful UI
- **Transparent background** - inherits your terminal's aesthetic
- **Tokyo Night theme** - easy on the eyes for long coding sessions
- **Snacks.nvim dashboard** - stunning startup screen with quick actions
- **Smooth scrolling** - buttery animations for better visual feedback
- **Git integration** - see changes directly in the gutter
- **Informative status line** - always know what's happening

### Multi-Language Powerhouse

Out-of-the-box support for professional development:

| Language | LSP | Formatting | Autocomplete |
|----------|-----|------------|--------------|
| **C/C++** | clangd | clang-format | Yes |
| **Python** | pyright | black | Yes |
| **JavaScript/TypeScript** | ts_ls | prettier | Yes |
| **Node.js** | ts_ls | prettier | Yes |
| **Java** | jdtls | google-java-format | Yes |
| **HTML/CSS** | html, cssls | prettier | Yes |
| **Docker** | dockerls | - | Yes |
| **Lua** | lua_ls | stylua | Yes |

### Productivity Features

**File Management:**
- Instant file navigation with Telescope fuzzy finder
- Beautiful file tree with nvim-tree and icons
- Blazing fast grep search through entire codebase
- Quick access to recent files

**Code Intelligence:**
- Intelligent context-aware autocomplete
- Jump to definition instantly
- Find all references across your project
- Hover documentation without leaving the editor
- Code actions and quick fixes
- Smart renaming that updates everywhere

**Terminal Integration:**
- Built-in floating terminal
- Quick run commands for all major languages
- No need to leave Neovim to test your code
- Toggle terminal with a single keypress

**Git Integration:**
- See changes in the gutter (added, modified, deleted lines)
- Git blame, status, diff, and more
- Stage, commit, and push without leaving the editor
- Navigate between hunks easily

**Code Quality:**
- Auto-formatting on save
- Syntax highlighting for 50+ languages
- LSP diagnostics show errors as you type
- Automatic bracket and quote pairing
- Smart commenting for any language

### Developer Experience

**Performance:**
- Lazy loading - plugins load only when needed
- Fast startup time - under 100ms to editor ready
- Optimized for large projects
- No lag or stuttering

**Convenience:**
- Tab support for managing multiple files
- Split windows for side-by-side editing
- System clipboard integration
- Persistent undo history
- Auto-save capabilities
- Session management

---

## Installation

### Prerequisites

Before installing, ensure you have:

- **Neovim 0.10 or higher** - Check with `nvim --version`
- **Git** - For cloning repositories and plugin management
- **Node.js** - Required for many language servers
- **A Nerd Font** - For proper icon display ([Download here](https://www.nerdfonts.com/))

Optional but recommended:
- **ripgrep** - For faster file searching (`sudo apt install ripgrep`)
- **fd** - For faster file finding (`sudo apt install fd-find`)
- **Python 3** with pip - For Python development
- **GCC/Clang** - For C/C++ development
- **JDK** - For Java development

### Quick Install

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.backup 2>/dev/null

# Clone this config
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim

# Start Neovim - plugins will install automatically
nvim
```

On first launch:
1. Lazy.nvim will automatically install all plugins (wait ~1-2 minutes)
2. Mason will begin installing language servers
3. Once complete, restart Neovim
4. You're ready to code!

---

## Usage Guide

### Dashboard

When you open Neovim without a file, you'll see the dashboard:

- Press `f` to find files with fuzzy search
- Press `n` to create a new file
- Press `g` to search for text across all files
- Press `r` to view recently opened files
- Press `c` to open your Neovim configuration
- Press `q` to quit

### File Explorer

Toggle the file tree with `Space + e`. Inside the tree:

- Use `j/k` to move up and down
- Press `Enter` to open files or folders
- Press `a` to create a new file
- Press `d` to delete
- Press `r` to rename
- Press `c` to copy, `x` to cut, `p` to paste

### Finding and Searching

**Find Files:**
- `Space + ff` - Fuzzy find files by name
- Type to filter, press `Enter` to open

**Search in Files:**
- `Space + fg` - Search for text across all files (live grep)
- See results in real-time as you type

**Find Buffers:**
- `Space + fb` - Browse all open files/buffers

### Running Code

Built-in terminal with quick run commands:

**Toggle Terminal:**
- `Ctrl + \` - Toggle floating terminal
- `Space + tt` - Floating terminal
- `Space + th` - Horizontal split terminal
- `Space + tv` - Vertical split terminal

**Quick Run:**
- `Space + rp` - Run current Python file
- `Space + rn` - Run current Node.js/JavaScript file
- `Space + rc` - Compile and run C file
- `Space + rx` - Compile and run C++ file
- `Space + rj` - Compile and run Java file

Press `Esc` to exit terminal mode and return to editing.

### Code Intelligence

**Navigation:**
- `gd` - Go to definition
- `gr` - Find all references
- `K` - Show documentation for symbol under cursor
- `Ctrl-o` - Jump back
- `Ctrl-i` - Jump forward

**Code Actions:**
- `Space + ca` - Show available code actions
- `Space + rn` - Rename symbol across entire project
- `Space + fm` - Format current file

**Diagnostics:**
- Errors and warnings show inline as you type
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic

### Git Workflow

**See Changes:**
- Green bars in gutter = added lines
- Blue bars = modified lines
- Red triangles = deleted lines
- `]c` / `[c` - Jump between changes

**Git Commands:**
```vim
:Git          " Open git status
:Git add %    " Stage current file
:Git add .    " Stage all files
:Git commit   " Commit changes
:Git push     " Push to remote
:Git pull     " Pull from remote
:Git diff     " View differences
:Git blame    " See who changed what
```

### Tabs and Windows

**Tabs:**
- `Tab` - Next tab
- `Shift-Tab` - Previous tab
- `:tabnew` - Open new tab

**Windows:**
- `Ctrl-h/j/k/l` - Navigate between windows
- `:split` - Horizontal split
- `:vsplit` - Vertical split

---

## Keyboard Shortcuts

Complete keymap reference available in [KEYMAPS.md](./KEYMAPS.md).

### Essential Shortcuts

```
Leader key: Space

File Management:
  Space-e      Toggle file tree
  Space-ff     Find files
  Space-fg     Search in files
  Space-fb     Find buffers

Terminal:
  Ctrl-\       Toggle terminal
  Space-rp     Run Python
  Space-rn     Run Node.js
  Space-rc     Run C
  Space-rx     Run C++
  Space-rj     Run Java

Code Navigation:
  gd           Go to definition
  gr           Go to references
  K            Show documentation
  Ctrl-o/i     Jump back/forward

Editing:
  Space-ca     Code actions
  Space-rn     Rename symbol
  Space-fm     Format code
  gcc          Comment line
  
Git:
  ]c/[c        Next/prev change
  :Git         Git status

Windows:
  Ctrl-h/j/k/l Move between windows
  Tab/S-Tab    Switch tabs
```

---

## Customization

### Change Theme

Edit `~/.config/nvim/lua/plugins/ui.lua`:

```lua
-- Replace tokyonight with your preferred theme
-- Popular options: catppuccin, gruvbox, nord, onedark, dracula
{
  "folke/tokyonight.nvim",
  config = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}
```

### Add More Language Servers

Edit `~/.config/nvim/lua/plugins/lsp.lua`:

```lua
ensure_installed = {
  "clangd",
  "pyright",
  "your_language_server",  -- Add here
}
```

Browse available servers: `:Mason`

### Disable Transparent Background

Edit `~/.config/nvim/init.lua` and comment out or remove the ColorScheme autocmd:

```lua
-- Comment out this section to disable transparency
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   end,
-- })
```

### Modify Keybindings

All keymaps are defined in `~/.config/nvim/init.lua`. Edit to customize:

```lua
-- Example: Change file tree toggle from Space-e to Space-t
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
```

---

## File Structure

```
~/.config/nvim/
├── init.lua                  # Main configuration file
├── lua/
│   └── plugins/
│       ├── lsp.lua          # Language server setup
│       ├── cmp.lua          # Autocompletion config
│       ├── telescope.lua    # Fuzzy finder config
│       ├── nvimtree.lua     # File tree config
│       ├── terminal.lua     # Terminal integration
│       ├── ui.lua           # Theme and statusline
│       ├── git.lua          # Git integration
│       ├── formatting.lua   # Code formatting
│       ├── snacks.lua       # Dashboard
│       └── utils.lua        # Utility plugins
├── KEYMAPS.md               # Complete keymap reference
└── README.md                # This file
```

---

## Troubleshooting

### Language Server Not Working

**Check if installed:**
```vim
:Mason
```
Manually install missing language servers from the list.

**Check LSP status:**
```vim
:LspInfo
```
Shows which language servers are attached to current buffer.

### Plugins Not Loading

**Sync plugins:**
```vim
:Lazy sync
```
This will install, update, and clean plugins.

**View plugin status:**
```vim
:Lazy
```

### Icons Not Showing

Install a Nerd Font:
1. Download from [nerdfonts.com](https://www.nerdfonts.com/)
2. Install the font on your system
3. Set your terminal to use the Nerd Font

### Terminal Not Working

Make sure you have a shell configured:
```bash
echo $SHELL
```

### Performance Issues

**Profile startup time:**
```vim
:Lazy profile
```

**Check health:**
```vim
:checkhealth
```

### Clean Reinstall

If things are broken, start fresh:

```bash
# Remove all Neovim data
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Start Neovim (will reinstall everything)
nvim
```

---

## FAQ

**Q: Do I need tmux?**  
A: No! This config includes ToggleTerm for built-in terminal functionality.

**Q: Can I use this on Windows?**  
A: Yes, but paths will be different. Use `~/AppData/Local/nvim/` instead of `~/.config/nvim/`.

**Q: How do I update plugins?**  
A: Run `:Lazy update` inside Neovim.

**Q: How do I add more language support?**  
A: Open `:Mason` and install the language server you need.

**Q: Is this config heavy?**  
A: No, it's optimized with lazy loading. Startup time is under 100ms.

**Q: Can I use my own keybindings?**  
A: Absolutely! Edit `init.lua` to customize any keybindings.

---

## Contributing

Contributions are welcome! Here's how you can help:

**Found a Bug?**
1. Open an issue describing the problem
2. Include your Neovim version (`nvim --version`)
3. Include error messages if any

**Want to Add a Feature?**
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test thoroughly
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

**Improve Documentation?**
Documentation improvements are always appreciated! Fix typos, clarify instructions, or add examples.

---

## License

MIT License

Copyright (c) 2024

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

## Acknowledgments

This configuration is built on the shoulders of giants. Special thanks to:

- **[Neovim](https://neovim.io/)** - The hyperextensible Vim-based text editor
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager by folke
- **[Mason.nvim](https://github.com/williamboman/mason.nvim)** - Portable package manager
- **[Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Highly extendable fuzzy finder
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - Quickstart configs for LSP
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion plugin
- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)** - Terminal plugin
- **[Tokyo Night](https://github.com/folke/tokyonight.nvim)** - Beautiful color scheme
- **[Snacks.nvim](https://github.com/folke/snacks.nvim)** - UI enhancements
- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)** - Git integration
- **[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)** - File explorer

And countless other plugin authors who make Neovim awesome!

---

## Support

**Issues:** [GitHub Issues](https://github.com/jasnoorpannu/nvim-config/issues)  
**Discussions:** [GitHub Discussions](https://github.com/jasnoorpannu/nvim-config/discussions)

---

## Star History

If you find this config helpful, consider giving it a star on GitHub!

---

<div align="center">

**Made for developers who love fast, beautiful editors**

[Report Bug](https://github.com/jasnoorpannu/nvim-config/issues) · [Request Feature](https://github.com/jasnoorpannu/nvim-config/issues) · [Documentation](./KEYMAPS.md)

</div>
