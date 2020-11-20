mod = require 'lab_10_mod'
lib = require 'lab_10_lib'

x = 5
y = 10

print('before')
print(x, y)

x, y = mod.lua_swap(x, y)

print('after using swap module lua')
print(x, y)

x, y = lib.lua_swap(x, y)
print('after using swap c library')
print(x, y)

