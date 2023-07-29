#!/usr/bin/env python
# coding=utf-8
flags = [
'-Wall',
'-Wextra',
# '-Werror',
'-Wno-long-long',
'-Wno-variadic-macros',
'-fexceptions',
'-DNDEBUG',
# You 100% do NOT need -DUSE_CLANG_COMPLETER in your flags; only the YCM
# source code needs it.
'-DUSE_CLANG_COMPLETER',
# THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
# language to use when compiling headers. So it will guess. Badly. So C++
# headers will be compiled as C headers. You don't want that so ALWAYS specify
# a "-std=<something>".
# For a C project, you would set this to something like 'c99' instead of
# 'c++11'.
'-std=c++14',
# ...and the same thing goes for the magic -x option which specifies the
# language that the files to be compiled are written in. This is mostly
# relevant for c++ headers.
# For a C project, you would set this to 'c' instead of 'c++'.
'-x',
'c++',

# c/c++ include path
'-I',
'/opt/homebrew/include/',
'-I',
'/opt/homebrew/opt/glfw/include',
'-I',
'/opt/homebrew/opt/glew/include',
'-I',
'/opt/homebrew/opt/glm/include',
'-I', './src',
'-I', './include'
]

