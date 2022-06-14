-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "MoonScript",
  files = "%.moon$",
  headers = "^#!.*[ /]moon",
  comment = "--",
  patterns = {
    { pattern = { '"', '"', '\\' },       type = "string"   },
    { pattern = { "'", "'", '\\' },       type = "string"   },
    { pattern = { "%[%[", "%]%]" },       type = "string"   },
    { pattern = "%-%-.-\n",               type = "comment"  },
    { pattern = "-?0x%x+",                type = "number"   },
    { pattern = "-?%d+[%d%.eE]*",         type = "number"   },
    { pattern = "-?%.?%d+",               type = "number"   },
    { pattern = "%.%.%.?",                type = "keyword2" },
    { pattern = "[<>~=]=",                type = "keyword2" },
    { pattern = "[%+%-=/%*%^%%#<>]",      type = "keyword2" },
    { pattern = "[%a_][%w_]*%s*%f[(\"{]", type = "function" },
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
    { pattern = {"\\", "[%a_][%w_]*"},    type = "function" },
    { pattern = {"%.", "[%a_][%w_]*"},    type = "function" },
    { pattern = {"@", "[%a_][%w_]*"},     type = "keyword2" },
    { pattern = "!",                      type = "keyword2" },
    { pattern = "[%p]",                   type = "keyword"  },
  },
  symbols = {
    ["if"]       = "keyword",
    ["then"]     = "keyword",
    ["else"]     = "keyword",
    ["when"]     = "keyword",
    ["elseif"]   = "keyword",
    ["do"]       = "keyword",
    ["->"]       = "keyword",
    ["while"]    = "keyword",
    ["for"]      = "keyword",
    ["break"]    = "keyword",
    ["continue"] = "keyword",
    ["export"]   = "keyword",
    ["unless"]   = "keyword",
    ["return"]   = "keyword",
    ["in"]       = "keyword",
    ["not"]      = "keyword",
    ["and"]      = "keyword",
    ["or"]       = "keyword",
    ["import"]   = "keyword",
    ["as"]       = "keyword",
    ["from"]     = "keyword",
    ["class"]    = "keyword",
    ["extends"]  = "keyword",
    ["switch"]   = "keyword",
    ["with"]     = "keyword",
    ["using"]    = "keyword",
    ["super"]    = "keyword2",
    ["self"]     = "keyword2",
    ["#"]        = "keyword2",
    ["true"]     = "literal",
    ["false"]    = "literal",
    ["nil"]      = "literal",
  },
}

