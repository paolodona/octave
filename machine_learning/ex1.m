% A is a matrix
% b is a vector
% x is a vector
function cost = squaredErrorCost(A, b, x)
 % squaredError ||Ax -b||^2
 cost = sum( (A * x' - b') .^ 2 );
 return;
endfunction
