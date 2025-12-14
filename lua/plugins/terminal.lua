return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    })

    -- Terminal keymaps
    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    end

    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

    -- Quick run functions for different languages
    local Terminal = require("toggleterm.terminal").Terminal

    -- Python
    local function run_python()
      local file = vim.fn.expand("%")
      local python_run = Terminal:new({
        cmd = "python3 " .. file,
        direction = "float",
        close_on_exit = false,
      })
      python_run:toggle()
    end

    -- Node.js
    local function run_node()
      local file = vim.fn.expand("%")
      local node_run = Terminal:new({
        cmd = "node " .. file,
        direction = "float",
        close_on_exit = false,
      })
      node_run:toggle()
    end

    -- C
    local function run_c()
      local file = vim.fn.expand("%")
      local filename = vim.fn.expand("%:t:r")
      local c_run = Terminal:new({
        cmd = "gcc " .. file .. " -o " .. filename .. " && ./" .. filename,
        direction = "float",
        close_on_exit = false,
      })
      c_run:toggle()
    end

    -- C++
    local function run_cpp()
      local file = vim.fn.expand("%")
      local filename = vim.fn.expand("%:t:r")
      local cpp_run = Terminal:new({
        cmd = "g++ " .. file .. " -o " .. filename .. " && ./" .. filename,
        direction = "float",
        close_on_exit = false,
      })
      cpp_run:toggle()
    end

    -- Java
    local function run_java()
      local file = vim.fn.expand("%")
      local java_run = Terminal:new({
        cmd = "javac " .. file .. " && java " .. vim.fn.expand("%:t:r"),
        direction = "float",
        close_on_exit = false,
      })
      java_run:toggle()
    end

    -- Set keymaps for running files
    vim.keymap.set("n", "<leader>rp", run_python, { desc = "Run Python" })
    vim.keymap.set("n", "<leader>rn", run_node, { desc = "Run Node" })
    vim.keymap.set("n", "<leader>rc", run_c, { desc = "Run C" })
    vim.keymap.set("n", "<leader>rx", run_cpp, { desc = "Run C++" })
    vim.keymap.set("n", "<leader>rj", run_java, { desc = "Run Java" })
    
    -- Generic terminal
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Float Terminal" })
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle Horizontal Terminal" })
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Toggle Vertical Terminal" })
  end,
}
