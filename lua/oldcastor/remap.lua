--vim.tmap.set("n", "Esc", "<C-\\><C-N>")


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- join netx line without cursor moving
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- paste text without losing it if replacing another text
-- (deletes selected text into the void register (_?) and paste yanked
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- copy to system clipboard register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/oldcastor/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so ~/.config/nvim/lua/oldcastor/remap.lua")
end)

vim.keymap.set("n", "<leader>bd", function ()
    vim.cmd(":bd")
end)

vim.keymap.set("n", "<leader>bb", function ()
    vim.cmd(":ls")
end)

vim.keymap.set("n", "<leader>bh", function ()
    vim.cmd(":bnext")
end)

vim.keymap.set("n", "<leader>bl", function ()
    vim.cmd(":bprev")
end)

vim.keymap.set("n", "<leader>t", function ()
    vim.cmd(":b term")
end)



vim.keymap.set("i", "<M-l>", "<Right>")
