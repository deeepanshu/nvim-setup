return {
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "folke/noice.nvim",
      "MunifTanjim/nui.nvim",
      "mfussenegger/nvim-dap",
    },
    ft = { "scala", "sbt", "java" },
    build = ":MetalsInstall",
    opts = function()
      local metals_config = require("metals").bare_config()
      metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
      metals_config.settings = {
        showImplicitArguments = true,
        excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
      }
      metals_config.find_root_dir_max_project_nesting = 2
      metals_config.init_options.statusBarProvider = "off"
      metals_config.on_attach = function(client, bufnr)
        require("metals").setup_dap()
      end

      return metals_config
    end,
    config = function(self, metals_config)
      setKeymap("n", "<leader>fm", "<cmd>Telescope metals commands<CR>", "Open Metals Commands")
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.configurations.scala = {
        {
          type = "scala",
          request = "launch",
          name = "RunOrTest",
          metals = {
            runType = "runOrTestFile",
          },
          hostName = "127.0.0.1",
          port = 5005,
        },
        {
          type = "scala",
          request = "launch",
          name = "Test Target",
          metals = {
            runType = "testTarget",
          },
          hostName = "127.0.0.1",
          port = 5005,
        },
      }
    end,
  },
}
