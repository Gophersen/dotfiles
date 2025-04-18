local dap = require "dap"

-- local virtual_env = os.getenv("VIRTUAL_ENV")
-- local python_path
--
-- if virtual_env then
--   python_path = virtual_env .. "/bin/python"
-- elseif os.getenv(".venv/bin/python") then
--  python_path = ".venv/bin/python"
-- else
--   python_path = "/usr/bin/python"
-- end
-- local python_path = ".venv/bin/python"
local python_path = "python"

dap.adapters.python = {
  type = "executable",
  command = python_path,
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    type = "python",
    require = "launch",
    name = "Launch file",
    program = "${file}",
    pythonPath = function()
      return python_path
    end,
  },
}
