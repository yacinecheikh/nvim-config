return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-vsnip',
		'hrsh7th/vim-vsnip',
	},
	config = function()
		local cmp = require 'cmp'
		cmp.setup {
			-- configure the snippet engine
			--snippet = {
			--	expand = function(args)
			--		vim.fn['vsnip#anonymous'](args.body)
			--	end,
			--},
			sources = {
				{ name = 'supermaven' },
				{ name = 'nvim_lsp' },
				--{ name = 'vsnip' },
				--{ name = 'buffer' },
			},
			mapping = {
				['<C-p>'] = cmp.mapping.select_prev_item(),
				['<C-n>'] = cmp.mapping.select_next_item(),
				['<C-d>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.close(),
				['<CR>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				},
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif require('luasnip').expand_or_jumpable() then
						vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
					else
						fallback()
					end
				end, {
					'i',
					's',
				}),
				['<S-Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif require('luasnip').jumpable(-1) then
						vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
					else
						fallback()
					end
				end, {
					'i',
					's',
				}),
			},
		}
	end,
}

