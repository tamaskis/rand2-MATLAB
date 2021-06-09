%==========================================================================
%
% rand2  Generates a matrix of random numbers between specified lower and
% upper bounds.
%
%   X = rand2(a,b)
%   X = rand2(a,b,[],type)
%   X = rand2(a,b,[n1,...,nn])
%   X = rand2(a,b,[n1,...,nn],type)
%
% See also rand, randi
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-06-09
%
%--------------------------------------------------------------------------

% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85423-random-number-generator-in-a-range-rand2
% GitHub: https://github.com/tamaskis/rand2-MATLAB
%
% See EXAMPLES.mlx (included with download) for examples.
%
%--------------------------------------------------------------------------
%
% -------
% INPUTS:
% -------
%   a               - (1×1) lower bound
%   b               - (1×1) upper bound
%   [n1,...,nn]     - (OPTIONAL) (1×N) matrix size
%                       --> defaults to [1,1]
%                       --> matrix can be n-dimensional
%   type            - (OPTIONAL) (char) data type to return, three options:
%                       --> 'int' - integer
%                       --> 'single' - single-precision floating-point #
%                       --> 'double' - double-precision floating-point #
%
% --------
% OUTPUTS:
% --------
%   X               - (1×1 or n1×n2×...×nn) matrix of random numbers 
%                     between a and b
%
% -----
% NOTE:
% -----
%   --> N = length of [n1,...,nn] input
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
        X = a+(b-a)*rand(matrix_size,type);
        
    end

end