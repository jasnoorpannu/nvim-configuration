# Neovim Keymaps

**Leader Key:** `Space`

---

## Dashboard (Startup Screen)

When you open Neovim without a file, you'll see the dashboard:

| Key | Action |
|-----|--------|
| `f` | Find File |
| `n` | New File |
| `g` | Find Text (grep) |
| `r` | Recent Files |
| `c` | Open Config |
| `q` | Quit |

---

## File Explorer (nvim-tree)

### Toggle & Navigation
| Keymap | Action |
|--------|--------|
| `Space + e` | Toggle file tree |
| `j/k` | Move down/up |
| `Enter` | Open file/folder |
| `h` | Close folder |
| `l` | Open folder |
| `q` | Close tree |
| `R` | Refresh tree |

### File Operations
| Keymap | Action |
|--------|--------|
| `a` | Create new file |
| `d` | Delete file |
| `r` | Rename file |
| `x` | Cut file |
| `c` | Copy file |
| `p` | Paste file |
| `y` | Copy filename |
| `Y` | Copy relative path |
| `gy` | Copy absolute path |

### Opening Files
| Keymap | Action |
|--------|--------|
| `Enter` | Open in current window |
| `Ctrl-v` | Open in vertical split |
| `Ctrl-x` | Open in horizontal split |
| `Ctrl-t` | Open in new tab |

---

## Fuzzy Finder (Telescope)

### Main Commands
| Keymap | Action |
|--------|--------|
| `Space + ff` | Find files |
| `Space + fg` | Live grep (search in files) |
| `Space + fb` | Find buffers |

### Inside Telescope
| Keymap | Action |
|--------|--------|
| `Ctrl-j` or `Down` | Next item |
| `Ctrl-k` or `Up` | Previous item |
| `Enter` | Select item |
| `Esc` | Close |
| `Ctrl-c` | Close |

---

## Terminal (ToggleTerm)

### Opening Terminals
| Keymap | Action |
|--------|--------|
| `Ctrl + \` | Toggle floating terminal |
| `Space + tt` | Toggle floating terminal |
| `Space + th` | Toggle horizontal terminal (bottom) |
| `Space + tv` | Toggle vertical terminal (side) |

### Inside Terminal Mode
| Keymap | Action |
|--------|--------|
| `Esc` | Exit terminal mode (back to normal) |
| `Ctrl-h` | Move to left window |
| `Ctrl-j` | Move to bottom window |
| `Ctrl-k` | Move to top window |
| `Ctrl-l` | Move to right window |
| `Ctrl-\` | Toggle terminal |

### Quick Run Commands
| Keymap | Action | Language |
|--------|--------|----------|
| `Space + rp` | Run Python file | Python |
| `Space + rn` | Run Node.js file | JavaScript |
| `Space + rc` | Compile & run C file | C |
| `Space + rx` | Compile & run C++ file | C++ |
| `Space + rj` | Compile & run Java file | Java |

**Example Workflow:**
1. Write your code in `test.py`
2. Press `Space + rp` to run it
3. See output in floating terminal
4. Press `Esc` to go back to editing
5. Press `Ctrl + \` to close terminal

---

## Basic Vim Motions

### Movement
| Keymap | Action |
|--------|--------|
| `h` | Left |
| `j` | Down |
| `k` | Up |
| `l` | Right |
| `w` | Next word |
| `b` | Previous word |
| `e` | End of word |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `gg` | First line |
| `G` | Last line |
| `{number}G` | Go to line number |
| `Ctrl-u` | Scroll up half page |
| `Ctrl-d` | Scroll down half page |
| `Ctrl-b` | Scroll up full page |
| `Ctrl-f` | Scroll down full page |
| `%` | Jump to matching bracket |
| `{` | Previous paragraph |
| `}` | Next paragraph |

### Editing
| Keymap | Action |
|--------|--------|
| `i` | Insert before cursor |
| `a` | Insert after cursor |
| `I` | Insert at start of line |
| `A` | Insert at end of line |
| `o` | New line below |
| `O` | New line above |
| `Esc` | Exit insert mode |
| `x` | Delete character |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `yy` | Copy line |
| `Y` | Copy to end of line |
| `p` | Paste after |
| `P` | Paste before |
| `u` | Undo |
| `Ctrl-r` | Redo |
| `.` | Repeat last command |
| `~` | Toggle case |
| `>>` | Indent line |
| `<<` | Unindent line |
| `==` | Auto-indent line |

### Visual Mode
| Keymap | Action |
|--------|--------|
| `v` | Visual mode (character) |
| `V` | Visual line mode |
| `Ctrl-v` | Visual block mode |
| `y` | Copy selection |
| `d` | Delete selection |
| `c` | Change selection |
| `>` | Indent selection |
| `<` | Unindent selection |
| `~` | Toggle case of selection |

### Search & Replace
| Keymap | Action |
|--------|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |
| `:%s/old/new/g` | Replace all in file |
| `:s/old/new/g` | Replace all in line |
| `:%s/old/new/gc` | Replace all with confirmation |

---

## LSP (Code Intelligence)

### Navigation
| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Hover documentation |
| `Ctrl-k` | Signature help |
| `gi` | Go to implementation |
| `gD` | Go to declaration |

### Code Actions
| Keymap | Action |
|--------|--------|
| `Space + ca` | Code actions |
| `Space + rn` | Rename symbol |
| `Space + fm` | Format code |

### Diagnostics
| Keymap | Action |
|--------|--------|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `Space + d` | Show diagnostics |

---

## Autocompletion (nvim-cmp)

Inside insert mode when completion menu appears:

| Keymap | Action |
|--------|--------|
| `Ctrl-Space` | Trigger completion |
| `Tab` | Next suggestion |
| `Shift-Tab` | Previous suggestion |
| `Enter` | Confirm selection |
| `Ctrl-e` | Close menu |
| `Ctrl-b` | Scroll docs up |
| `Ctrl-f` | Scroll docs down |

---

## Tabs & Buffers

### Tabs
| Keymap | Action |
|--------|--------|
| `Tab` | Next tab |
| `Shift-Tab` | Previous tab |
| `:tabnew` | New tab |
| `:tabclose` | Close tab |
| `:tabonly` | Close all other tabs |
| `gt` | Next tab (alternative) |
| `gT` | Previous tab (alternative) |
| `{n}gt` | Go to tab number n |

### Buffers
| Keymap | Action |
|--------|--------|
| `Space + fb` | Find buffer (Telescope) |
| `:bn` or `:bnext` | Next buffer |
| `:bp` or `:bprevious` | Previous buffer |
| `:bd` or `:bdelete` | Delete buffer |
| `:buffers` or `:ls` | List all buffers |

---

## Window Management

### Navigation
| Keymap | Action |
|--------|--------|
| `Ctrl-h` | Move to left window |
| `Ctrl-j` | Move to bottom window |
| `Ctrl-k` | Move to top window |
| `Ctrl-l` | Move to right window |
| `Ctrl-w w` | Cycle through windows |

### Split Windows
| Keymap | Action |
|--------|--------|
| `:split` or `:sp` | Horizontal split |
| `:vsplit` or `:vsp` | Vertical split |
| `Ctrl-w s` | Horizontal split |
| `Ctrl-w v` | Vertical split |
| `Ctrl-w q` | Close window |
| `Ctrl-w o` | Close all other windows |

### Resize Windows
| Keymap | Action |
|--------|--------|
| `Ctrl-w +` | Increase height |
| `Ctrl-w -` | Decrease height |
| `Ctrl-w >` | Increase width |
| `Ctrl-w <` | Decrease width |
| `Ctrl-w =` | Equal size all windows |
| `Ctrl-w _` | Maximize height |
| `Ctrl-w |` | Maximize width |

### Move Windows
| Keymap | Action |
|--------|--------|
| `Ctrl-w H` | Move window to far left |
| `Ctrl-w J` | Move window to bottom |
| `Ctrl-w K` | Move window to top |
| `Ctrl-w L` | Move window to far right |

---

## Comments

| Keymap | Action | Mode |
|--------|--------|------|
| `gcc` | Toggle line comment | Normal |
| `gc{motion}` | Comment with motion | Normal |
| `gc` | Toggle comment | Visual |
| `gbc` | Toggle block comment | Normal |
| `gb` | Toggle block comment | Visual |

Examples:
- `gcc` - Comment current line
- `gc3j` - Comment 3 lines down
- `gcap` - Comment around paragraph
- Select lines in visual mode + `gc` - Comment selection

---

## Git (Gitsigns & Fugitive)

### Gitsigns (In Buffer)
| Keymap | Action |
|--------|--------|
| `]c` | Next hunk (change) |
| `[c` | Previous hunk (change) |
| `:Gitsigns preview_hunk` | Preview hunk |
| `:Gitsigns stage_hunk` | Stage hunk |
| `:Gitsigns reset_hunk` | Reset hunk |
| `:Gitsigns blame_line` | Show blame for line |

### Fugitive Commands
| Command | Action |
|---------|--------|
| `:Git` or `:G` | Git status |
| `:Git add %` | Stage current file |
| `:Git add .` | Stage all changes |
| `:Git commit` | Commit |
| `:Git commit -m "msg"` | Commit with message |
| `:Git push` | Push to remote |
| `:Git pull` | Pull from remote |
| `:Git diff` | Show diff |
| `:Git log` | Show log |
| `:Git blame` | Show blame |
| `:Gdiffsplit` | Diff in split |

---

## File Operations

### Basic Commands
| Command | Action |
|---------|--------|
| `:w` | Save file |
| `:w filename` | Save as filename |
| `:q` | Quit |
| `:q!` | Quit without saving |
| `:wq` or `:x` | Save and quit |
| `:wa` | Save all files |
| `:qa` | Quit all |
| `:wqa` | Save all and quit |
| `:e filename` | Edit/open file |
| `:e!` | Reload file (discard changes) |
| `:saveas filename` | Save as |

### File Info
| Command | Action |
|---------|--------|
| `:f` or `Ctrl-g` | Show file info |
| `g Ctrl-g` | Show cursor position/stats |

---

## Copy, Cut, Paste

### System Clipboard (Works with OS Clipboard)
| Keymap | Action |
|--------|--------|
| `yy` | Copy line (to clipboard) |
| `y{motion}` | Copy with motion |
| `dd` | Cut line |
| `d{motion}` | Cut with motion |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `"+y` | Explicit copy to system clipboard |
| `"+p` | Explicit paste from system clipboard |
| `"*y` | Copy to primary selection (X11) |
| `"*p` | Paste from primary selection |

### Examples
- `yiw` - Copy inner word
- `yaw` - Copy around word (includes whitespace)
- `yap` - Copy around paragraph
- `y$` - Copy to end of line
- `y^` - Copy to start of line
- `ygg` - Copy to beginning of file
- `yG` - Copy to end of file
- `daw` - Delete a word
- `d$` - Delete to end of line
- `diw` - Delete inner word

---

## Text Objects

Use with operators like `d` (delete), `c` (change), `y` (yank), `v` (visual):

| Text Object | Description | Example |
|-------------|-------------|---------|
| `iw` | Inner word | `diw` - delete word |
| `aw` | Around word | `daw` - delete word + space |
| `iW` | Inner WORD (includes punctuation) | `yiW` |
| `aW` | Around WORD | `yaW` |
| `is` | Inner sentence | `cis` - change sentence |
| `as` | Around sentence | `das` |
| `ip` | Inner paragraph | `yip` |
| `ap` | Around paragraph | `dap` |
| `i"` | Inside double quotes | `ci"` |
| `a"` | Around double quotes | `da"` |
| `i'` | Inside single quotes | `ci'` |
| `a'` | Around single quotes | `da'` |
| `i\`` | Inside backticks | ``ci` `` |
| `a\`` | Around backticks | ``da` `` |
| `i(` or `ib` | Inside parentheses | `di(` |
| `a(` or `ab` | Around parentheses | `da(` |
| `i[` | Inside brackets | `di[` |
| `a[` | Around brackets | `da[` |
| `i{` or `iB` | Inside braces | `di{` |
| `a{` or `aB` | Around braces | `da{` |
| `i<` | Inside angle brackets | `di<` |
| `a<` | Around angle brackets | `da<` |
| `it` | Inside HTML/XML tag | `dit` |
| `at` | Around HTML/XML tag | `dat` |

### Common Combinations
- `ciw` - Change inner word
- `dap` - Delete around paragraph
- `yit` - Yank inside HTML tag
- `vi"` - Select inside quotes
- `ca{` - Change around braces

---

## Auto-pairs

Automatically closes brackets, quotes, etc:

| Type | Auto-completes to |
|------|-------------------|
| `(` | `()` with cursor inside |
| `[` | `[]` |
| `{` | `{}` |
| `"` | `""` |
| `'` | `''` |
| `` ` `` | ``` `` ``` |

Press the closing character to skip over it instead of inserting another.

---

## Utility Commands

### Mason (LSP/Tools Manager)
| Command | Action |
|---------|--------|
| `:Mason` | Open Mason UI |
| `:MasonInstall {tool}` | Install tool |
| `:MasonUninstall {tool}` | Uninstall tool |
| `:MasonUpdate` | Update all tools |
| `:MasonLog` | View logs |

### Lazy (Plugin Manager)
| Command | Action |
|---------|--------|
| `:Lazy` | Open Lazy UI |
| `:Lazy update` | Update plugins |
| `:Lazy sync` | Sync plugins (install/update/clean) |
| `:Lazy clean` | Remove unused plugins |
| `:Lazy check` | Check for updates |
| `:Lazy log` | View recent updates |
| `:Lazy profile` | Profile startup time |

### Health Check
| Command | Action |
|---------|--------|
| `:checkhealth` | Check all health |
| `:checkhealth vim.lsp` | Check LSP health |
| `:checkhealth mason` | Check Mason health |

---

## Pro Tips & Advanced Features

### Multiple Cursors (Visual Block)
1. `Ctrl-v` - Enter visual block mode
2. Select text vertically with `j/k`
3. `I` - Insert at beginning of all lines
4. Type your text
5. `Esc` - Apply to all lines

**Or:**
1. `Ctrl-v` - Visual block mode
2. Select lines
3. `A` - Append at end of all lines
4. Type text
5. `Esc` - Apply

### Macros
| Keymap | Action |
|--------|--------|
| `q{letter}` | Start recording to register (a-z) |
| `q` | Stop recording |
| `@{letter}` | Play macro from register |
| `@@` | Repeat last macro |
| `{number}@{letter}` | Play macro n times |

**Example:**
1. `qa` - Start recording to register 'a'
2. Perform your actions (e.g., `0i// <Esc>j`)
3. `q` - Stop recording
4. `@a` - Play macro once
5. `10@a` - Play macro 10 times

### Marks
| Keymap | Action |
|--------|--------|
| `m{letter}` | Set mark (a-z for local, A-Z for global) |
| `'{letter}` | Jump to mark line |
| `` `{letter} `` | Jump to exact mark position |
| `''` | Jump to last position |
| ``` `` ``` | Jump to last exact position |
| `:marks` | List all marks |
| `:delmarks {letter}` | Delete mark |

**Special Marks:**
- `` `. `` - Last change
- `'"` - Last position when exited
- `'[` - Start of last change/yank
- `']` - End of last change/yank

### Registers
| Keymap | Action |
|--------|--------|
| `"{register}` | Use specific register |
| `"ay` | Yank to register 'a' |
| `"ap` | Paste from register 'a' |
| `:reg` | Show all registers |
| `"+` | System clipboard register |
| `"0` | Last yank register |
| `"1-9` | Last 9 deletes |

### Indentation
| Keymap | Action |
|--------|--------|
| `>>` | Indent line |
| `<<` | Unindent line |
| `==` | Auto-indent line |
| `gg=G` | Auto-indent entire file |
| `>ap` | Indent paragraph |
| `>i{` | Indent inside braces |
| `={motion}` | Auto-indent with motion |

### Folding
| Keymap | Action |
|--------|--------|
| `za` | Toggle fold |
| `zo` | Open fold |
| `zc` | Close fold |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zj` | Move to next fold |
| `zk` | Move to previous fold |

### Jump List
| Keymap | Action |
|--------|--------|
| `Ctrl-o` | Jump to older position |
| `Ctrl-i` | Jump to newer position |
| `:jumps` | Show jump list |

### Change List
| Keymap | Action |
|--------|--------|
| `g;` | Go to older change |
| `g,` | Go to newer change |
| `:changes` | Show change list |

---

## Quick Reference Card

```
Essential Shortcuts:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
File & Navigation:
  Space-e      Toggle file tree
  Space-ff     Find files
  Space-fg     Search in files
  Space-fm     Format code
  
Terminal & Running Code:
  Ctrl-\       Toggle floating terminal
  Space-rp     Run Python file
  Space-rn     Run Node.js file
  Space-rc     Run C file
  Space-rx     Run C++ file
  Space-rj     Run Java file
  
Navigation:
  Ctrl-h/j/k/l Window navigation
  Tab/S-Tab    Switch tabs
  gd           Go to definition
  K            Show documentation
  gr           Go to references
  
Editing:
  i/a/o        Insert modes
  v/V/Ctrl-v   Visual modes
  yy/dd        Copy/cut line
  p/P          Paste
  u/Ctrl-r     Undo/redo
  gcc          Comment line
  
Git:
  :Git         Git status
  :Git add %   Stage file
  :Git commit  Commit changes
  ]c/[c        Next/prev change
  
LSP:
  Space-ca     Code actions
  Space-rn     Rename symbol
  [d/]d        Prev/next diagnostic
```

---

## Save This File

Save as: `~/.config/nvim/KEYMAPS.md`

```bash
# View in Neovim anytime:
nvim ~/.config/nvim/KEYMAPS.md

# Or search for specific keymaps:
# Space-ff then type "KEYMAPS"
```

---

**Remember:** Most commands work in **Normal mode**. Press `Esc` to return to Normal mode from Insert or Visual mode!

**Pro Tip:** Use `:h {command}` to get help on any command. For example: `:h gd` or `:h visual-mode`
