local lsp = require("lsp-zero")

lsp.preset("recommended")

--[[
lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
	'sumneko_lua',
})
--]]
-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

--=========================================================
--Mason (Lsp installer, Dap installer, linter installer and formatter installer)
--=========================================================
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = {  "rust_analyzer", "lua_ls" },
}
--=========================================================
--CMP
--=========================================================
local cmp = require('cmp')

local cmp_select = {behavior = cmp.SelectBehavior.Select}



local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	["<C-Space>"] = cmp.mapping.complete(),
	['<c-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
	['<c-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
	["<c-y>"] = cmp.mapping(
            cmp.mapping.confirm {
             behavior = cmp.ConfirmBehavior.Insert,
             select = true,
            },
            { "i", "c" }
        ),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil


lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})



lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

--===========================================================
--Mappings
--==========================================================

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

vim.keymap.set("n", "gd", function() vim.lsp.buf.defintion() end, opts)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "gI", function() vim.lsp.buf.implementation() end, opts)
vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "gR", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "ga", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "gA", function() vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics() end, opts)
vim.keymap.set("n", "<C-n>", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "<C-p>", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>vll", function() LspLocationList() end, opts)
--Char 46 is '.'
vim.keymap.set("n", "<Char-46>", function() vim.lsp.buf.code_action() end, opts)

end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

