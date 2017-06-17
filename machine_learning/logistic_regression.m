clear;
d = importdata('tumor_sizes.csv', ',');
x = d.data(:,1); # tumor_size 
y = d.data(:,2); # malign
m = length(x);

X = [ones(m,1), x]

# function [jVal, gradient] = costFunction(theta)
#   jVal =
#   gradient = [...code to compute derivative of J(theta)...];
# end
#
# options = optimset('GradObj', 'on', 'MaxIter', 100);
# initialTheta = zeros(2,1);
# [theta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);

# theta = [100;0.2];

plot(x, y, 'rx');
hold on;
plotLogisticFunction(x, theta);

# predict price

tumor_size = 3;
probability = [1, tumor_size ] * theta
plot(tumor_size, probability, 'bx', 'MarkerSize', 10);

grid;
hold off;
