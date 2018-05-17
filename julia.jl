#!/usr/bin/env julia

# Intro to julia - YoMos meeting 2018
#
# Ludwig Leidinger <ludwig.leidinger@uni-wuerzburg.de>
#
# julia documentation can be found at https://docs.julialang.org/en/stable
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

5 / 7

# Of course, you can assign the values to variables:

myvariable = π * 7

# That's right - julia is Unicode-compatible.

mystring = "Hello YoMos!"

# Multidimensional structures are called arrays.

myvector = [5, 2, 4]

mymatrix = [[0, 1, 2] [3, 4, 5] [6, 7, 8]]

# There is also tuples, dictionaries etc.

# Indexing is 1-based:

myvector[1]
myvector[end]

mystring[1]
mystring[7:end-1]

mymatrix[:, 1]

# Functions may feel familiar:

sqrt(myvariable)

mean(myvector)

# Some functions modify their arguments.
# By convention, they are indicated by a `!` (which you should stick to, too).

sort!(myvector)

# Element-wise application of functions and operaters are indicated by a `.`:

sqrt.(myvector)
myvector .^ 5

# Or use a loop:

for i in myvector
    println(sqrt(i))
end

# Code blocks (functions, loops, conditionals, etc.) are closed with `end` keywords.

# You should try to always write functions.
# They compile into the most efficient binaries.

function dosomecoolstuff(really::Bool = true)
    if really
        return "OK."
    else
        return "nope."
    end
end

dosomecoolstuff()
dosomecoolstuff(false)

# In the above function, the argument `really` is declared as type `Bool` (using `::`).
# To know the types of variables/values, use

typeof(myvariable)

typeof(5/7)

typeof(mystring)

typeof(myvector)

# You can create custom types using the `struct` keyword:

struct Mytype
    firstentry::String
    secondentry::Int64
end

# ... and create instances with:

firsttype = Mytype("foo", 7)

# call field values:

firsttype.firstentry

# Some more advanced notes on this:
# There are two kinds of structs: `immutable struct` and `mutable struct`
# Just using `struct` results in an immutable struct.
# Immutable types can not have their values modified (they can be reassigned though).
# With mutable types, this is possible but be aware that mutables are copied by reference (pointer)!
# Base types are also divided in these categories.
# Strings are immutable:

mystring[end] = '?'

# Arrays are mutable:

mycopiedvector = myvector

myvector[1] = 27

mycopiedvector

# Functions can have different methods, depending on their arguments.
# This is called "multiple dispatch" and is an important concept in julia.

function dosomecoolstuff(intargument::Int64)
    for i in 1:intargument
        print("bla")
    end
    println("")
end

dosomecoolstuff(true)

dosomecoolstuff(8)

# To install packages:

Pkg.add("Distributions")

# and load with

using Distributions
