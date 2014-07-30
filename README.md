# csrefactor

Supports [CoffeeScript] and [TypedCoffeeScript].
Create ast tree by [TypedCoffeeScript] and analyze symbols by [esrefactor].

## Install

```bash
npm install csrefactor
```

## Usage

```coffeescript
Context = require 'csrefactor'
context = new Context
context.setCode """
a = 100
b = a * 2
"""
context.indentify 1
```
