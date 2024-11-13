require("spadeconfig.remap")
require("spadeconfig.set")
-- Add this to your init.lua or lua configuration file
local M = {}
M.compilers = { vim.fn.getenv('CC'),"g++", "cc", "gcc", "clang", "cl", "zig" }
vim.opt_local.makeprg = "gcc -std=c11"
print("teehee")

