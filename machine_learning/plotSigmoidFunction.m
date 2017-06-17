% x is a column vector
function [y] = plotSigmoidFunction(x)
  x = [min(x):0.1:max(x)];
  y = 1 ./ (1 + exp(-x));
  plot(x, y, '-');
  return;
endfunction
