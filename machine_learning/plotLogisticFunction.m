% theta is a column vector
% x is a column vector
function [predictions] = plotLogisticFunction(x, theta)
  X = [ones(length(x),1), x];
  predictions = 1 ./ (1 + exp(-X * theta));
  plot(x, predictions, '-');
  return;
endfunction
