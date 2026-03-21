return {
  -- add any tools you want to have installed below
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "kdlfmt",
      "ruff",
      "debugpy",
      "black",
      "bash-debug-adapter",
      "bash-language-server",
      "beautysh",
    },
  },
}

-- INFO: list of installed:
--
-- ◍ bash-language-server bashls
-- ◍ beautysh
-- ◍ biome
-- ◍ black
-- ◍ clangd
-- ◍ codebook
-- ◍ codelldb
-- ◍ debugpy
-- ◍ delve
-- ◍ docker-compose-language-service docker_compose_language_service
-- ◍ dockerfile-language-server dockerls
-- ◍ eslint-lsp eslint
-- ◍ flake8
-- ◍ gofumpt
-- ◍ goimports
-- ◍ golangci-lint
-- ◍ gomodifytags
-- ◍ gopls
-- ◍ hadolint
-- ◍ impl
-- ◍ java-debug-adapter
-- ◍ java-test
-- ◍ jdtls
-- ◍ js-debug-adapter
-- ◍ json-lsp jsonls
-- ◍ kdlfmt
-- ◍ lua-language-server lua_ls
-- ◍ markdown-toc
-- ◍ markdownlint-cli2
-- ◍ markmap-cli
-- ◍ marksman
-- ◍ prettier
-- ◍ pyright
-- ◍ ruff
-- ◍ rust-analyzer rust_analyzer
-- ◍ shellcheck
-- ◍ shfmt
-- ◍ sqlfluff
-- ◍ stylua
-- ◍ taplo
-- ◍ texlab
-- ◍ vtsls
-- ◍ yaml-language-server yamlls
-- ◍ zls
