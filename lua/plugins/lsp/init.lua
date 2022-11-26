local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- local lsp_installer = require("nvim-lsp-installer")

require("mason").setup()
require("mason-lspconfig").setup({
	automatic_installation = true,
})

-- list of all servers installed
local servers = {
  "pyright",
}

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap

	-- if client.name == "tsserver" then
	-- 	client.server_capabilities.documentFormattingProvider = false
	-- end
	--
	-- if client.name == "sumneko_lua" then
	-- 	client.server_capabilities.documentFormattingProvider = false
	-- end

	keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
	keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
	keymap(bufnr, "n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
	keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	keymap(bufnr, "n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
	keymap(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
	keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
	keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

	local status_ok, illuminate = pcall(require, "illuminate")
	if not status_ok then
		return
	end
	illuminate.on_attach(client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- require("lspconfig")["copilot"].setup({
--   on_attach = on_attach,
--   capabilities = capabilities
-- })

require("lspconfig")["pyright"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["sumneko_lua"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["clangd"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["jdtls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["tsserver"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require "plugins.lsp.null-ls"
