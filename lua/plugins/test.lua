 return {
     {"nvim-lua/plenary.nvim"},
    { "nvim-treesitter/nvim-treesitter"},
{"nvim-neotest/neotest-jest"},    
 { 
       "nvim-neotest/neotest",
       requires = {
         "nvim-neotest/neotest-jest",
       },
       config = function()
         require("neotest").setup({
           adapters = {
             require("neotest-jest")({
               jestCommand = "yarn jest --",
               jestConfigFile = "jest.config.js",
               jest_test_discovery = false,
               env = { CI = true },
               cwd = function()
                 return vim.fn.getcwd()
               end,
             })
           }
         })
       end
     },
 {"nvim-neotest/nvim-nio"},
   }
   
