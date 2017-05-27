% A is a matrix
% b is a row vector
% x is a row vector
function cost = squaredErrorCost(A, b, x)
 % squaredError ||Ax -b||^2
 # cost = sum( (A * x - b) .^ 2 );
 cost = norm(A * x - b) ^ 2;
 return;
endfunction
