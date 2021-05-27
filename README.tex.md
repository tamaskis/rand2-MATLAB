# `rand2` [![View Random Number Generator in a Range (rand2) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85423-random-number-generator-in-a-range-rand2)

Generates a matrix of random numbers between specified lower and upper bounds.


## Syntax

`X = rand2(a,b)`\
`X = rand2(a,b,[],typename)`\
`X = rand2(a,b,[m,n])`\
`X = rand2(a,b,[m,n],typename)`


## Description

`X = rand2(a,b)` returns one random double-precision floating-point number between <img src="https://latex.codecogs.com/svg.latex?a" title="a" /> and <img src="https://latex.codecogs.com/svg.latex?b" title="b" />.

`X = rand2(a,b,[],typename)` returns one random number of data type `typename` between <img src="https://latex.codecogs.com/svg.latex?a" title="a" /> and <img src="https://latex.codecogs.com/svg.latex?b" title="b" />. The `typename` input can be `'int'` (integers), `'single'` (single-precision floating point numbers), or `'double'` (double-precision floating point numbers).

`X = rand2(a,b,[m,n])` returns an <img src="https://latex.codecogs.com/svg.latex?m\times&space;n" title="m\times n" /> matrix of random double-precision floating-point numbers between <img src="https://latex.codecogs.com/svg.latex?a" title="a" /> and <img src="https://latex.codecogs.com/svg.latex?b" title="b" />.

`X = rand2(a,b,[m,n],typename)` returns an <img src="https://latex.codecogs.com/svg.latex?m\times&space;n" title="m\times n" /> matrix of random numbers of data type `typename`. The `typename` input can be `'int'` (integers), `'single'` (single-precision floating point numbers), or `'double'` (double-precision floating point numbers).


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
