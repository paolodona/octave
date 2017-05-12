clear;
x = [1:10];
y = [4 5 6 3 7 8 10 9 9 10];

rsq = @(x,y) corr(x,y)^2*100;

disp(rsq(x, y));
