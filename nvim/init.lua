require("config.lazy")

vim.filetype.add({
  extension = {
    ll = "llvm",
  },
})

vim.g.dbs = {
  mydb = "postgresql://postgres:p93%vYSRde7rq46akmnjegK@localhost:5432/MyDatabase",
}
