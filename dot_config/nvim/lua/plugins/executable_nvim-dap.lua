return{
  {
    "mfussenegger/nvim-dap",
    optional = true,
    vscode = false,
    keys = {
    { "<F9>",       function() require('dap').toggle_breakpoint() end, desc = "Toggle Breakpoint"},
    { "<F5>",       function() require("dap").continue() end, desc = "Continue" },
    { "<F11>",      function() require("dap").step_into() end, desc = "Step Into" },
  },
  opts = function()
  local dap = require("dap")
  for _, lang in ipairs({ "c", "cpp" }) do
    dap.configurations[lang] = {
      {
        type = "codelldb",
        request = "launch",
        name = "lauch file dir",
        program = function()
          local source_path = vim.fn.expand("%:p")
          local filename_noext = vim.fn.expand("%:t:r")
          local file_dir = vim.fn.expand("%:p:h")
          -- local execute_path = vim.fn.expand("%:p:r")
          local execute_path = file_dir.."/temp/"..filename_noext
          local command = ("g++ -fdiagnostics-color=always -g %s -o %s"):format(source_path, execute_path)
          vim.fn.system(command)
          return execute_path
        end,
        cwd = "${fileDirname}",
      },
    }
    end
  dap.adapters.python = function(cb, config)
      if config.request == "attach" then
        ---@diagnostic disable-next-line: undefined-field
        local port = (config.connect or config).port
        ---@diagnostic disable-next-line: undefined-field
        local host = (config.connect or config).host or "127.0.0.1"
        cb({
            type = "server",
            port = assert(port, "`connect.port` is required for a python `attach` configuration"),
            host = host,
            options = {
              source_filetype = "python",
            },
          })
      else
        cb({
          type = "executable",
          command = "python",
          args = { "-m", "debugpy.adapter" },
          options = {
            source_filetype = "python",
          },
        })
      end
    end

  local is_windows = function()
    return vim.fn.has("win32") == 1
  end

  local function python_exe(venv)
    if is_windows() then
      return venv .. '\\Scripts\\python.exe'
    end
    return venv .. '/bin/python'
  end

  dap.configurations.python = {
          {
            -- The first three options are required by nvim-dap
            type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
            request = "launch",
            name = "Launch file",

            -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

            program = "${file}", -- This configuration will launch the current file if used.
            pythonPath = function()
              -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
              -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
              -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
              local cwd = vim.fn.getcwd()
              local venv_path = os.getenv("CONDA_PREFIX")
              if venv_path then
                return python_exe(venv_path)
              elseif vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
                return cwd .. "/venv/bin/python"
              elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                return cwd .. "/.venv/bin/python"
              else
                return "/opt/homebrew/bin/python3"
              end
            end,
          },
        }


  end,
    }
}
