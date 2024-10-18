return{
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- v10.20.0 版本后对于 python 默认开启了括号补全，但是我感觉不好用，所以这里给移除
    opts.auto_brackets = opts.auto_brackets or {}
    for i, bracket in ipairs(opts.auto_brackets) do
      if bracket == "python" then
        table.remove(opts.auto_brackets, i)
        break
      end
    end
    -- table.insert(opts.sources, 1, {
    --   name = "luasnip",
    --   group_index = 1,
    --   priority = 99,
    -- })
  end,
}
