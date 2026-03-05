let lspOpts = #{
    \   autoHighlightDiags: v:true,
    \   autoComplete: v:true,
    \   omniComplete: v:true,
    \   useBufferCompletion: v:true,
\}

autocmd User LspSetup call LspOptionsSet(lspOpts)

let s:mason_bin = expand('~/.local/share/nvim/mason/bin/')

let lspServers = [
    \#{
	\   name: 'pyright',
	\   filetype: 'python',
    \   path: s:mason_bin . 'pyright-langserver',
	\   args: ['--stdio'],
    \   workspaceConfig: #{
    \       python: #{
    \           pythonPath: '/opt/homebrew/bin/python3'
    \       }
    \   }
	\},
    \#{
    \   name: 'vimls',
    \   filetype: 'vim',
    \   path: s:mason_bin . 'vim-language-server',
    \   args: ['--stdio'],
    \},
\]
autocmd User LspSetup call LspAddServer(lspServers)

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })
