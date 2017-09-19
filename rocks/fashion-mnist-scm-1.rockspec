package = "fashion-mnist"
version = "scm-1"

source = {
   url = "git://github.com/mingloo/fashion-mnist.git"
}

description = {
   summary = "Fashion MNIST Dataset",
   detailed = [[
   ]],
   homepage = "https://github.com/zalandoresearch/fashion-mnist",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "paths >= 1.0",
}

build = {
   type = "builtin",
   modules = {
      ["fashion-mnist.init"] = "init.lua"
   },

   install = {
      lua = {
         -- this is ugly (but this is luarocks)
         ["fashion-mnist.data.train-images-idx3-ubyte"] = "data/train-images-idx3-ubyte",
         ["fashion-mnist.data.train-labels-idx1-ubyte"] = "data/train-labels-idx1-ubyte",
         ["fashion-mnist.data.t10k-images-idx3-ubyte"] = "data/t10k-images-idx3-ubyte",
         ["fashion-mnist.data.t10k-labels-idx1-ubyte"] = "data/t10k-labels-idx1-ubyte"
      }
   }
}
