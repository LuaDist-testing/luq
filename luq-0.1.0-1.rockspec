-- This file was automatically generated for the LuaDist project.

package = "luq"
version = "0.1.0-1"

-- LuaDist source
source = {
  tag = "0.1.0-1",
  url = "git://github.com/LuaDist-testing/luq.git"
}
-- Original source
-- source = {
--   url = "https://github.com/moteus/lua-luq/archive/v0.1.0.zip",
--   dir = "lua-luq-0.1.0",
-- }

description = {
  summary = "Lua light userdata queue",
  homepage = "https://github.com/moteus/lua-luq",
  license = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.3",
}

build = {
  copy_directories = {"test"},

  type = "builtin",

  platforms = {
    unix    = { modules = {
      ["luq"] = {
        libraries = {"pthread", "rt"},
      }
    }},
  },

  modules = {
    ["luq" ] = {
      sources = {
        'src/l52util.c', 'src/luq.c', 'src/luq_library_lock.c',
        'src/luq_map.c', 'src/luq_pthread.c', 'src/luq_qvoid.c',
      },
    },
  },
}

