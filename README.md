# `rand2` [![View Random Number Generator in a Range (rand2) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85423-random-number-generator-in-a-range-rand2)

Generates a matrix of random numbers between specified lower and upper bounds.


## Syntax

`X = rand2(a,b)`\
`X = rand2(a,b,[],type)`\
`X = rand2(a,b,[m,n])`\
`X = rand2(a,b,[m,n],type)`


## Description

`X = rand2(a,b)` returns one random double-precision floating-point number `X` between `a` and `b`.

`X = rand2(a,b,[],type)` returns one random number `X` of data type `type` between `a` and `b`. Options for `type` are `'int'` (integers), `'single'` (single-precision floating point numbers), or `'double'` (double-precision floating point numbers).

`X = rand2(a,b,[n1,...,nn])` returns an `n1`-by-`n2`-by-...-by-`nn` matrix `X` of random double-precision floating-point numbers between `a` and `b`.

`X = rand2(a,b,[n1,...,nn],type)` returns an `n1`-by-`n2`-by-...-by-`nn` matrix `X` of random numbers of data type `type`. Options for `type` are `'int'` (integers), `'single'` (single-precision floating point numbers), or `'double'` (double-precision floating point numbers).


## Examples

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples.
