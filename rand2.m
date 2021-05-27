% rand2  Generates a matrix of random numbers between specified lower and
% upper bounds. Data type specification (integer, single, double) is
% available.
%
%   X = rand2(a,b) returns one random double-precision floating-point
%   number between a and b.
%
%   X = rand2(a,b,[],typename) returns one random number of data type 
%   "typename" between a and b. The "typename" input can be either 'int', 
%   'single', or 'double'.
%
%   X = rand2(a,b,[m,n]) returns an m-by-n matrix of random double-
%   precision floating-point numbers between a and b.
%
%   X = rand2(a,b,[m,n],typename) returns an m-by-n matrix of random 
%   numbers of data type "typename" between a and b. The "typename" input 
%   can be either 'int', 'single', or 'double'.
%
% See also RAND, RANDI
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85423-random-number-generator-in-a-range-rand2
% GitHub: https://github.com/tamaskis/rand2-MATLAB
%
% See "DOCUMENTATION.pdf" for additional documentation and examples. 
% Examples can also be found in EXAMPLES.m. Both of these files are 
% included with the download.
%
% Copyright (c) 2021 Tamas Kis
% Last Update: 2021-03-27



%% FUNCTION

% INPUT: a - lower bound
%        b - upper bound
%        [m,n] - m rows, n columns (OPTIONAL)
%        typename - data type to return, three options (OPTIONAL):
%                    (1) 'int': integer
%                    (2) 'single': single-precision floating-point numbers
%                    (3) 'double': double-precision floating-point numbers
% OUTPUT: X - matrix of random numbers between a and b
function X = rand2(a,b,matrix_size,typename)
    
    % sets default matrix size to 1-by-1 if matrix_size is not input (i.e.
    % rand2 returns a single number by default)
    if nargin < 3 || isempty(matrix_size)
        matrix_size = [1,1];
    end
    
    % sets datatype to double (default) if there less than 4 input
    % arguments (because in this case, we logically know that typename is
    % not specified)
    if nargin < 4
        typename = 'double';
    end
    
    % rounds lower and upper bounds if integer data type specified
    if strcmp(typename,'int')
        a = ceil(a);
        b = floor(b);
    end

    % returns matrix of random integers between a and b
    if strcmp(typename,'int')
        X = randi([a,b],matrix_size);
        
    % returns matrix of random floating-point numbers (either single or
    % double precision, as specified by "typename") between a and b
    else
        X = a+(b-a)*rand(matrix_size(1),matrix_size(2),typename);
        
    end

end