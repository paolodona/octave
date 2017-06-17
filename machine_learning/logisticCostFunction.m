function [J] = logisticCostFunctionJ (X, y, theta)
  % X is the design matrix
  % y is a column vector
  % theta is a column vector

  m = size(X, 1);
  predictions = 1 ./ (1+exp(-X * theta));
  costs = y .* log(predictions) + (1-y) .* log(1-predictions)

  J = - 1 / m * sum(costs);
  return;

endfunction
