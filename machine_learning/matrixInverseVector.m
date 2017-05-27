% A is a matrix
% b is a column vector
% x init is
% alpha is the step size

% Matrix Inverse-Vector Products Using Gradient Descent

function A_inv_b = matrixInverseVector(A, b, x_init, alpha)
  x = x_init;
  cost = norm(A * x_init - b) ^ 2;
  while (cost > 10^-6)
    x = x - alpha * 2 * A * (A * x - b);
    cost = norm(A * x - b) ^ 2;
  endwhile;
  A_inv_b = x;
  return;
endfunction
