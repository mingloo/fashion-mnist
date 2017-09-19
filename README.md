# Fashion-MNIST Dataset for Torch #

Please see the original [Fashion-MNIST](https://github.com/zalandoresearch/fashion-mnist/) Github page for the detailed information.

Most of the code is adopted from Ronan Collobert's [MNIST](https://github.com/andresy/mnist) for Torch users.

## Installation ##

luarocks install https://raw.github.com/mingloo/fashion-mnist/master/rocks/fashion-mnist-scm-1.rockspec

## Usage ##

```lua
local fashion_mnist = require 'fashion-mnist'

local trainset = fashion_mnist.traindataset()
local testset = fashion_mnist.testdataset()

print(trainset.size) -- to retrieve the size
print(testset.size) -- to retrieve the size
```

Then, the i-th example is retrieved with:
```lua
local ex = trainset[i]
local x = ex.x -- the input (a 28x28 ByteTensor)
local y = ex.y -- the label (0--9)
```
