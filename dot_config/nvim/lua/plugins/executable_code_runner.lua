return {
  "CRAG666/code_runner.nvim",
  opts = {
    filetype = {
      python = {
        "export PYTHONPATH=$(pwd) &&",
        'python3 -u "$dir/$fileName"',
      },
      cpp = {
        "cd $dir &&",
        "mkdir -p temp &&",
        "g++ $dir/$fileName -o $dir/temp/$fileNameWithoutExt -std=c++17 &&",
        "$dir/temp/$fileNameWithoutExt",
      },
    },
  },
}
