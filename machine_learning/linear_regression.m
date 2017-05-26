clear;
d = importdata('house_prices.csv', ',');
x = d.data(:,1); # area
y = d.data(:,2); # price
m = length(x);

X = [ones(m,1), x]
theta = ((pinv(X'*X))*X'*y)'

# theta = [100,0.2];

# plot regression line
# function plotRegression(theta)
#   n = 3000;
#   x = [1:n];
#   X = [ones(n,1), x'];
#   h = X .* theta;
#   plot(x, sum(h'), '-');
# end

plot(x, y, 'rx');
hold on;
plotRegression(theta);
grid;
hold off;


# predict price

area = 2500;
price = sum([1, area] .* theta)
