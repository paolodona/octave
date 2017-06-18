clear;
d = importdata('house_prices.csv', ',');
x = d.data(:,1); # area
y = d.data(:,2); # price
m = length(x);

X = [ones(m,1), x , x.^2, x.^3]
theta = pinv(X'*X) *X'*y

# theta = [100;0.2];

plot(x, y, 'rx');
hold on;
plotCubicRegression(x, theta);

# predict price

area = 2500;
price = [1, area, area^2, area^3] * theta
plot(area, price, 'bx', 'MarkerSize', 10);

grid;
hold off;
