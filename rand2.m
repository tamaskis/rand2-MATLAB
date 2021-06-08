%==========================================================================
%
% rand2  Generates a matrix of random numbers between specified lower and
% upper bounds.
%
%   X = rand2(a,b)
%   X = rand2(a,b,[],type)
%   X = rand2(a,b,[m,n])
%   X = rand2(a,b,[m,n],type)
%
% See also rand, randi
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85423-random-number-generator-in-a-range-rand2
% GitHub: https://github.com/tamaskis/rand2-MATLAB
%
% See EXAMPLES.mlx for examples and "DOCUMENTATION.pdf" for additional 
% documentation. Both of these files are included with the download.
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-06-08
%
%--------------------------------------------------------------------------
%
% -------
% INPUTS:
% -------
%   a       - (1×1) lower bound
%   b       - (1×1) upper bound
%   [m,n]   - (1×2) (OPTIONAL) m = number of rows, n = number of columns
%               --> defaults to [1,1]
%   type    - (char) (OPTIONAL) data type to return, three options:
%               --> 'int' - integer
%               --> 'single' - single-precision floating-point numbers
%               --> 'double' - double-precision floating-point numbers
%
% --------
% OUTPUTS:
% --------
%   X       - (1×1 or m×n) matrix of random numbers between a and b
%
%==========================================================================
function X = rand2(a,b,matrix_size,type)
    
    % sets default matrix size to 1-by-1 if matrix_size is not input (i.e.
    % rand2 returns a single number by default)
    if nargin < 3 || isempty(matrix_size)
        matrix_size = [1,1];
    end
    
    % sets datatype to double (default) if there less than 4 input
    % arguments (because in this case, we logically know that typename is
    % not specified)
    if nargin < 4
        type = 'double';
    end
    
    % rounds lower and upper bounds if integer data type specified
    if strcmp(type,'int')
        a = ceil(a);
        b = floor(b);
    end

    % returns matrix of random integers between a and b
    if strcmp(type,'int')
        X = randi([a,b],matrix_size);
        
    % returns matrix of random floating-point numbers (either single or
    % double precision, as specified by "typename") between a and b
    else
        X = a+(b-a)*rand(matrix_size(1),matrix_size(2),type);
        
    end

end