% theta is a column vector

function [h] = plotRegression (theta)
  n = 3000;
  x = [1:n];
  X = [ones(n,1), x'];
  predictions = X * theta;
  plot(x, predictions, '-');
  return;
endfunction
