function [J] = costFunctionJ (X, y, theta)
  % X is the design matrix
  % y is a column vector
  % theta is a column vector

  m = size(X, 1);
  predictions = X * theta;
  sqrErrors = (predictions - y) .^ 2; % squared errors

  J = 1/(2*m) * sum(sqrErrors);
  return;

endfunction
