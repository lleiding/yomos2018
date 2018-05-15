#!/usr/bin/env julia

# Intro to julia - YoMos meeting 2018
#
# Ludwig Leidinger <ludwig.leidinger@uni-wuerzburg.de>
#
# julia is a general purpose, dynamic programming language.
# It aims to combine the usability of R/matlab/python with the speed of C.
# As a fairly new language, it is still under development.
# This means there might be changes breaking your code or incomplete/missing features.
# Similar to other dynamic languages, there is a interactive shell: the repl.
# The repl is very handy to try out stuff.
# For example, you can use it for arithmetics:

3 * 2

2^8

5/7

# Of course, you can assign the values to variables:

myvariable = π * 7

mystring = "Hello YoMos!"

# That's right - julia is Unicode-compatible.

# Multidimensional structures are called arrays.

myvector = [2, 4, 5]

mymatrix = [[0, 1, 2] [3, 4, 5] [6, 7, 8]]

# Indexing is 1-based:

myvector[1]
myvector[end]

mystring[1]
mystring[7:end-1]

mymatrix[:, 1]

# Functions may feel familiar:

sqrt(myvariable)

mean(myvector)

# Element-wise application of functions and operaters are indicated by a `.`:

sqrt.(myvector)
myvector .^ 5

