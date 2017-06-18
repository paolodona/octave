% theta is a column vector
% x is a column vector
function [predictions] = plotQuadraticRegression (x, theta)
  x = [min(x):max(x)]';
  X = [ones(length(x),1), x, x.^2];
  predictions = X * theta;
  plot(x, predictions, '-');
  return;
endfunction
