% theta is a column vector
% x is a column vector
function [predictions] = plotRegression (x, theta)
  X = [ones(length(x),1), x];
  predictions = X * theta;
  plot(x, predictions, '-');
  return;
endfunction
